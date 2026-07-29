// MAUD — Flam Engine + Swing/Groove Timing Hub
// Sole trigger path: ALL sequencer hits pass through here for timing processing.
// Adds sub-rhythmic bursts, global swing, and per-voice groove offsets.
// Uses messnamed() to send pitch/velocity modulation to gen~ before each sub-hit.
//
// inlet 0: step number from sequencer (via "trig <voice> <step>")
// inlet 1: param changes ("subdivision <v> <val>", "swing <val>", "groove <v> <val>", etc.)
// inlet 2: transport tempo ("tempo <ms_per_step>")
// outlets 0-5: bangs to voice click~ triggers
// outlet 6: status messages

inlets = 3;
outlets = 7;

var NUM_VOICES = 6;

// Subdivision options: index → divisor of one step
// 0=off, 1=1/32 (2 per step), 2=1/48 (3 per step), 3=1/64 (4 per step), 4=1/96 (6 per step)
var SUB_DIVS = [0, 2, 3, 4, 6];
var SUB_LABELS = ["OFF", "1/32", "1/48", "1/64", "1/96"];

// Per-voice flam state
var flam = [];
for (var i = 0; i < NUM_VOICES; i++) {
	flam[i] = {
		subdivision: 0,    // index into SUB_DIVS (0=off)
		probability: 50,   // 0-100%
		humanize: 0,       // 0-1 (jitter amount, scaled to ±ms)
		burst: 1,          // 1-8 sub-hits per trigger
		active: 0,         // whether flam engine is on for this voice
		pitch_mod: 0,      // 0-12 semitones spread across burst
		vel_decay: 0       // 0-1 velocity falloff across burst
	};
}

// Transport
var ms_per_step = 125; // default 120bpm at 1/16

// Swing and groove state
var swing = 0;           // 0-1 (MPC-style swing percentage)
var groove_offset = [0, 0, 0, 0, 0, 0];  // -1 to +1 per voice

// Scheduled tasks (for delayed bangs)
var tasks = [];

function trig(voice, step) {
	// Prevent unbounded task accumulation (GC pressure causes timing drags)
	if (tasks.length > 48) cleanup_tasks();

	voice = Math.floor(voice);
	if (voice < 0 || voice >= NUM_VOICES) return;

	// If step is undefined (manual trigger, MIDI), treat as step 0 (no swing)
	if (step === undefined) step = 0;
	step = Math.floor(step);

	// Reset flam modulation on every main hit (clean slate for non-flam hits)
	messnamed("v" + voice + "_p", "flam_pitch_off", 0);
	messnamed("v" + voice + "_p", "flam_vel", 1);

	var f = flam[voice];

	// ── SWING + GROOVE TIMING ──
	// Swing: delay odd steps by swing * ms_per_step * 0.5
	var swing_delay = (step % 2 === 1) ? swing * ms_per_step * 0.5 : 0;
	// Groove offset: per-voice timing nudge ±(ms_per_step * 0.25)
	var groove_ms = groove_offset[voice] * ms_per_step * 0.25;
	// Total main hit timing offset
	var main_delay = Math.max(0, swing_delay + groove_ms);

	// ── FLAM SETUP ──
	if (f.subdivision === 0 || f.active === 0) {
		messnamed("v" + voice + "_p", "flam_pitch_gate", 0);
		// Fire main hit with timing offset
		if (main_delay > 0) {
			schedule_main_bang(voice, main_delay);
		} else {
			outlet(voice, "bang");
		}
		return;
	}

	// Flam is active
	// Send pitch release gate: vel_decay controls how long pitch bend lingers
	messnamed("v" + voice + "_p", "flam_pitch_gate", f.vel_decay);

	var divs = SUB_DIVS[f.subdivision];
	var sub_ms = ms_per_step / divs;
	var n_hits = Math.min(f.burst, divs);

	// Snapshot as bare numbers (no object allocation in hot path)
	var pm = f.pitch_mod;
	var vd = f.vel_decay;

	// Fire main hit with swing/groove offset
	if (main_delay > 0) {
		schedule_main_bang(voice, main_delay);
	} else {
		outlet(voice, "bang");
	}

	// Sub-hits start AFTER main_delay
	for (var k = 1; k < n_hits; k++) {
		// Probability gate
		if (Math.random() * 100 >= f.probability) continue;

		// Base delay for this sub-hit (offset from main_delay)
		var delay = main_delay + sub_ms * k;

		// Humanize: add random jitter ±(humanize * sub_ms * 0.4)
		if (f.humanize > 0) {
			delay = Math.max(1, delay + (Math.random() * 2 - 1) * f.humanize * sub_ms * 0.4);
		}

		// Schedule the bang with modulation (bare numbers, no object)
		schedule_bang(voice, delay, k, n_hits, pm, vd);
	}
}

function schedule_main_bang(voice, delay_ms) {
	var t = new Task(function() {
		outlet(voice, "bang");
	});
	t.schedule(delay_ms);
	tasks.push(t);
}

function schedule_bang(voice, delay_ms, k, n_hits, pm, vd) {
	var t = new Task(function() {
		fire_bang(voice, k, n_hits, pm, vd);
	});
	t.schedule(delay_ms);
	tasks.push(t);
}

function fire_bang(voice, k, n_hits, pm, vd) {
	// Progressive pitch: rises across the burst
	var pitch_off = (n_hits > 1) ? (k / (n_hits - 1)) * pm : 0;
	// Progressive velocity: decays across the burst
	var vel = 1.0 - (k / n_hits) * vd;

	// Send modulation to gen~ via messnamed (arrives before click~ in same tick)
	messnamed("v" + voice + "_p", "flam_pitch_off", pitch_off);
	messnamed("v" + voice + "_p", "flam_vel", vel);
	outlet(voice, "bang");
}

// Clean up completed tasks in-place (no array allocation)
function cleanup_tasks() {
	var write = 0;
	for (var i = 0; i < tasks.length; i++) {
		if (tasks[i].running) {
			tasks[write++] = tasks[i];
		}
	}
	tasks.length = write;
}

// ── Parameter setters ──

function subdivision(voice, val) {
	voice = Math.floor(voice);
	val = Math.floor(val);
	if (voice >= 0 && voice < NUM_VOICES && val >= 0 && val < SUB_DIVS.length) {
		flam[voice].subdivision = val;
		flam[voice].active = val > 0 ? 1 : 0;
	}
}

function probability(voice, val) {
	voice = Math.floor(voice);
	if (voice >= 0 && voice < NUM_VOICES) {
		flam[voice].probability = Math.max(0, Math.min(100, val / 127 * 100));
	}
}

function humanize(voice, val) {
	voice = Math.floor(voice);
	if (voice >= 0 && voice < NUM_VOICES) {
		flam[voice].humanize = Math.max(0, Math.min(1, val / 127));
	}
}

function burst(voice, val) {
	voice = Math.floor(voice);
	val = Math.floor(val);
	if (voice >= 0 && voice < NUM_VOICES) {
		flam[voice].burst = Math.max(1, Math.min(8, val));
	}
}

function pitch_mod(voice, val) {
	voice = Math.floor(voice);
	if (voice >= 0 && voice < NUM_VOICES) {
		flam[voice].pitch_mod = Math.max(0, Math.min(12, val / 127 * 12));
	}
}

function vel_decay(voice, val) {
	voice = Math.floor(voice);
	if (voice >= 0 && voice < NUM_VOICES) {
		flam[voice].vel_decay = Math.max(0, Math.min(1, val / 127));
	}
}

function tempo(ms) {
	ms_per_step = Math.max(10, ms);
}

// ── Swing and Groove setters ──

function set_swing(val) {
	// val comes as 0-127 from dial, scale to 0-1
	swing = Math.max(0, Math.min(1, val / 127));
}

function groove(voice, val) {
	voice = Math.floor(voice);
	if (voice >= 0 && voice < NUM_VOICES) {
		// val comes as 0-127 from dial (center=64), scale to -1..+1
		groove_offset[voice] = Math.max(-1, Math.min(1, (val - 64) / 63));
	}
}

function master_groove(val) {
	for (var i = 0; i < NUM_VOICES; i++) groove(i, val);
}

// ── Master controls (apply to all voices) ──

function master_subdivision(val) {
	for (var i = 0; i < NUM_VOICES; i++) subdivision(i, val);
}

function master_probability(val) {
	for (var i = 0; i < NUM_VOICES; i++) probability(i, val);
}

function master_humanize(val) {
	for (var i = 0; i < NUM_VOICES; i++) humanize(i, val);
}

function master_burst(val) {
	for (var i = 0; i < NUM_VOICES; i++) burst(i, val);
}

function master_pitch_mod(val) {
	for (var i = 0; i < NUM_VOICES; i++) pitch_mod(i, val);
}

function master_vel_decay(val) {
	for (var i = 0; i < NUM_VOICES; i++) vel_decay(i, val);
}

// ── State access for kit manager ──

function get_state() {
	var out = [];
	for (var i = 0; i < NUM_VOICES; i++) {
		out.push(flam[i].subdivision);
		out.push(flam[i].probability);
		out.push(flam[i].humanize);
		out.push(flam[i].burst);
		out.push(flam[i].pitch_mod);
		out.push(flam[i].vel_decay);
	}
	// Append swing and groove state
	out.push(swing);
	for (var j = 0; j < NUM_VOICES; j++) {
		out.push(groove_offset[j]);
	}
	outlet(6, "flam_state", out);
}

function restore_voice(voice, sub, prob, hum, bst, pm, vd) {
	voice = Math.floor(voice);
	if (voice >= 0 && voice < NUM_VOICES) {
		flam[voice].subdivision = Math.floor(sub);
		flam[voice].active = sub > 0 ? 1 : 0;
		flam[voice].probability = prob;
		flam[voice].humanize = hum;
		flam[voice].burst = Math.floor(bst);
		flam[voice].pitch_mod = (pm !== undefined) ? pm : 0;
		flam[voice].vel_decay = (vd !== undefined) ? vd : 0;
	}
}

function restore_swing_groove(sw, g0, g1, g2, g3, g4, g5) {
	swing = (sw !== undefined) ? sw : 0;
	var g = [g0, g1, g2, g3, g4, g5];
	for (var i = 0; i < NUM_VOICES; i++) {
		if (g[i] !== undefined) groove_offset[i] = g[i];
	}
}

// ── Message handler ──

function anything() {
	var msg = messagename;
	var args = arrayfromargs(arguments);

	if (inlet === 0) {
		if (msg === "trig") {
			trig(args[0], args[1]);
		}
	} else if (inlet === 1) {
		if (msg === "subdivision") subdivision(args[0], args[1]);
		else if (msg === "probability") probability(args[0], args[1]);
		else if (msg === "humanize") humanize(args[0], args[1]);
		else if (msg === "burst") burst(args[0], args[1]);
		else if (msg === "pitch_mod") pitch_mod(args[0], args[1]);
		else if (msg === "vel_decay") vel_decay(args[0], args[1]);
		else if (msg === "swing") set_swing(args[0]);
		else if (msg === "groove") groove(args[0], args[1]);
		else if (msg === "master_groove") master_groove(args[0]);
		else if (msg === "master_subdivision") master_subdivision(args[0]);
		else if (msg === "master_probability") master_probability(args[0]);
		else if (msg === "master_humanize") master_humanize(args[0]);
		else if (msg === "master_burst") master_burst(args[0]);
		else if (msg === "master_pitch_mod") master_pitch_mod(args[0]);
		else if (msg === "master_vel_decay") master_vel_decay(args[0]);
		else if (msg === "get_state") get_state();
		else if (msg === "restore_voice") restore_voice(args[0], args[1], args[2], args[3], args[4], args[5], args[6]);
		else if (msg === "restore_swing_groove") restore_swing_groove(args[0], args[1], args[2], args[3], args[4], args[5], args[6]);
	} else if (inlet === 2) {
		if (msg === "tempo") tempo(args[0]);
		else if (msg === "int" || !isNaN(parseFloat(msg))) {
			tempo(parseFloat(msg));
		}
	}
}

function msg_float(v) {
	if (inlet === 2) tempo(v);
}

function msg_int(v) {
	if (inlet === 2) tempo(v);
}
