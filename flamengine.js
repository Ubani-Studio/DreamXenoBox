// DREAM XENO BOX — Flam Engine
// Sits between sequencer and voice triggers. Adds sub-rhythmic bursts.
//
// inlet 0: bang from sequencer (voice 0-5 trigger via "trig <voice>")
// inlet 1: param changes ("subdivision <v> <val>", "probability <v> <val>", etc.)
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
		active: 0          // whether flam engine is on for this voice
	};
}

// Transport
var ms_per_step = 125; // default 120bpm at 1/16

// Scheduled tasks (for delayed bangs)
var tasks = [];

function trig(voice) {
	voice = Math.floor(voice);
	if (voice < 0 || voice >= NUM_VOICES) return;

	var f = flam[voice];
	if (f.subdivision === 0 || f.active === 0) return;

	var divs = SUB_DIVS[f.subdivision];
	var sub_ms = ms_per_step / divs;
	var n_hits = Math.min(f.burst, divs);

	for (var k = 0; k < n_hits; k++) {
		// Skip the first sub-hit (k=0) — that's the main sequencer hit already
		if (k === 0) continue;

		// Probability gate
		if (Math.random() * 100 >= f.probability) continue;

		// Base delay for this sub-hit
		var delay = sub_ms * k;

		// Humanize: add random jitter ±(humanize * sub_ms * 0.4)
		if (f.humanize > 0) {
			var jitter = (Math.random() * 2 - 1) * f.humanize * sub_ms * 0.4;
			delay = Math.max(1, delay + jitter);
		}

		// Schedule the bang
		schedule_bang(voice, delay);
	}
}

function schedule_bang(voice, delay_ms) {
	var t = new Task(fire_bang, this, voice);
	t.schedule(delay_ms);
	tasks.push(t);
}

function fire_bang(voice) {
	outlet(voice, "bang");
}

// Clean up completed tasks periodically
function cleanup_tasks() {
	var live = [];
	for (var i = 0; i < tasks.length; i++) {
		if (tasks[i].running) {
			live.push(tasks[i]);
		}
	}
	tasks = live;
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
		// val comes as 0-127 from dial, scale to 0-100
		flam[voice].probability = Math.max(0, Math.min(100, val / 127 * 100));
	}
}

function humanize(voice, val) {
	voice = Math.floor(voice);
	if (voice >= 0 && voice < NUM_VOICES) {
		// val comes as 0-127 from dial, scale to 0-1
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

function tempo(ms) {
	ms_per_step = Math.max(10, ms);
}

// ── State access for kit manager ──

function get_state() {
	var out = [];
	for (var i = 0; i < NUM_VOICES; i++) {
		out.push(flam[i].subdivision);
		out.push(flam[i].probability);
		out.push(flam[i].humanize);
		out.push(flam[i].burst);
	}
	outlet(6, "flam_state", out);
}

function restore_voice(voice, sub, prob, hum, bst) {
	voice = Math.floor(voice);
	if (voice >= 0 && voice < NUM_VOICES) {
		flam[voice].subdivision = Math.floor(sub);
		flam[voice].active = sub > 0 ? 1 : 0;
		flam[voice].probability = prob;
		flam[voice].humanize = hum;
		flam[voice].burst = Math.floor(bst);
	}
}

// ── Message handler ──

function anything() {
	var msg = messagename;
	var args = arrayfromargs(arguments);

	if (inlet === 0) {
		if (msg === "trig") {
			trig(args[0]);
		}
	} else if (inlet === 1) {
		if (msg === "subdivision") subdivision(args[0], args[1]);
		else if (msg === "probability") probability(args[0], args[1]);
		else if (msg === "humanize") humanize(args[0], args[1]);
		else if (msg === "burst") burst(args[0], args[1]);
		else if (msg === "get_state") get_state();
		else if (msg === "restore_voice") restore_voice(args[0], args[1], args[2], args[3], args[4]);
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
