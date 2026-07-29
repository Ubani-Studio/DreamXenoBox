// MAUD — LFO Engine with Kuramoto Coupling
// 6 per-voice LFOs, 14 shapes (std + chaos + lusona wavetables),
// veve topology adjacency matrices for inter-LFO phase coupling.
//
// inlet 0: transport tempo (ms per step, from tr-ms)
// inlet 1: param changes (lfo_rate, lfo_depth, lfo_shape, lfo_dest, etc.)
// outlet 0: LFO display values (voice, value)
// outlet 1: status messages

inlets = 2;
outlets = 2;

var NUM_VOICES = 6;
var TWO_PI = Math.PI * 2;
var TICK_MS = 33; // ~30Hz update rate

// ── Per-voice LFO state ──

var phase = [0, 0, 0, 0, 0, 0];
var rate = [0.5, 0.5, 0.5, 0.5, 0.5, 0.5]; // Hz
var depth = [0, 0, 0, 0, 0, 0];             // 0-1
var shape = [0, 0, 0, 0, 0, 0];             // index into SHAPES
var dest = [0, 0, 0, 0, 0, 0];              // index into DESTINATIONS
var sh_val = [0, 0, 0, 0, 0, 0];            // sample & hold current value

// ── Lorenz attractor state (per-voice) ──

var SIGMA = 10;
var BETA = 8 / 3;
var lorenz = [];
for (var li = 0; li < NUM_VOICES; li++) {
	lorenz[li] = {
		x: 1 + li * 0.1,
		y: 1 + li * 0.2,
		z: 1 + li * 0.3
	};
}
var chaos_rho = 28; // 0=periodic, 28=chaotic, 40=extreme

// ── Kuramoto coupling ──

var coupling_K = 0;
var topo_idx = 0;
var adj = [
	0,1,1,1,1,1,
	1,0,1,1,1,1,
	1,1,0,1,1,1,
	1,1,1,0,1,1,
	1,1,1,1,0,1,
	1,1,1,1,1,0
]; // default: all-to-all

// All 13 veve adjacency matrices (from veve_loader.js)
var TOPOS = [
	// 0: All-to-all
	[0,1,1,1,1,1, 1,0,1,1,1,1, 1,1,0,1,1,1, 1,1,1,0,1,1, 1,1,1,1,0,1, 1,1,1,1,1,0],
	// 1: Legba Carrefour (hub-spoke)
	[0,1,1,1,1,1, 1,0,0,0,0,0, 1,0,0,0,0,0, 1,0,0,0,0,0, 1,0,0,0,0,0, 1,0,0,0,0,0],
	// 2: Carrefour Diamond
	[0,1,1,1,1,0, 1,0,1,1,1,0, 1,1,0,1,1,0, 1,1,1,0,1,0, 1,1,1,1,0,1, 0,0,0,0,1,0],
	// 3: Ferraille (V-shape)
	[0,1,1,0,0,0, 1,0,0,0,0,0, 1,0,0,0,0,0, 0,0,0,0,0,0, 0,0,0,0,0,0, 0,0,0,0,0,0],
	// 4: Ogou Bhathalah (zigzag)
	[0,1,0,1,1,0, 1,0,1,0,1,0, 0,1,0,0,1,1, 1,0,0,0,0,0, 1,1,1,0,0,0, 0,0,1,0,0,0],
	// 5: Ring
	[0,1,0,0,0,1, 1,0,1,0,0,0, 0,1,0,1,0,0, 0,0,1,0,1,0, 0,0,0,1,0,1, 1,0,0,0,1,0],
	// 6: Marassa (twin triangles, bridge 0.5)
	[0,1,1,0,0,0, 1,0,1,0,0,0, 1,1,0,0.5,0,0, 0,0,0.5,0,1,1, 0,0,0,1,0,1, 0,0,0,1,1,0],
	// 7: Damballah (linear chain)
	[0,1,0,0,0,0, 1,0,1,0,0,0, 0,1,0,1,0,0, 0,0,1,0,1,0, 0,0,0,1,0,1, 0,0,0,0,1,0],
	// 8: Erzulie (heart/two lobes)
	[0,1,1,1,1,0, 1,0,1,0,0,0.5, 1,1,0,0,0,0, 1,0,0,0,1,0, 1,0,0,1,0,0.5, 0,0.5,0,0,0.5,0],
	// 9: Baron Samedi (latticed cross)
	[0,1,1,1,1,0.4, 1,0,0,0.4,0,0, 1,0,0,0,0.4,0, 1,0.4,0,0,0,0, 1,0,0.4,0,0,0, 0.4,0,0,0,0,0],
	// 10: Simbi (tree/fan)
	[0,1,0,1,0,1, 1,0,1,0,0,0, 0,1,0,0,0,0, 1,0,0,0,1,0, 0,0,0,1,0,0, 1,0,0,0,0,0],
	// 11: Ayizan (palm frond)
	[0,1,0,0,0,0, 1,0,1,0,0.7,0, 0,1,0,1,0,0.7, 0,0,1,0,0,0, 0,0.7,0,0,0,0, 0,0,0.7,0,0,0],
	// 12: Gran Bwa (anthropomorphic tree)
	[0,1,0,0,0,0, 1,0,1,1,1,1, 0,1,0,0,0,0, 0,1,0,0,0,0, 0,1,0,0,0,0.5, 0,1,0,0,0.5,0]
];

// ── Destinations ──
// 0=OFF, 1=Pan, 2=Pitch, 3=Stress, 4=Bloom, 5=Decay, 6=Mist, 7=Heat, 8=Drift, 9=Density
var DEST_NAMES = [
	"off", "pan", "pitch", "stress", "bloom",
	"decay", "mist", "heat", "drift", "density"
];
var DEST_PARAM = [
	"", "pan_lfo", "lfo_pitch_off", "lfo_stress_off", "lfo_bloom_off",
	"lfo_decay_off", "lfo_mist_off", "lfo_heat_off", "lfo_drift_off", "lfo_density_off"
];
// Depth scaling per destination
var DEST_SCALE = [
	0, 0.5, 12, 0.5, 0.5,
	20, 0.5, 0.5, 0.5, 0.5
];

// ── Lusona wavetables (Gerdes mirror-curve algorithm) ──

var LUSONA_PRESETS = [
	[3, 4],  // myombo_2
	[4, 5],  // myombo_3
	[3, 5],  // chased_chicken
	[5, 7],  // hunted_bird
	[7, 8],  // lions_stomach
	[5, 6]   // ancestor_tree
];
var lusona_tables = [];

function gcd(a, b) {
	while (b) { var t = b; b = a % b; a = t; }
	return a;
}

function lcm(a, b) {
	return (a * b) / gcd(a, b);
}

function zigzag(val, period) {
	val = val % period;
	var half = period / 2;
	return (val > half) ? period - val : val;
}

function build_lusona_table(rows, cols) {
	var W = 2 * cols;
	var H = 2 * rows;
	var period = lcm(2 * W, 2 * H);
	var table = new Array(period);
	for (var t = 0; t < period; t++) {
		// X component normalized to -1..+1
		table[t] = (zigzag(t, 2 * W) / W) * 2 - 1;
	}
	return table;
}

// Precompute all 6 lusona wavetables
for (var lp = 0; lp < LUSONA_PRESETS.length; lp++) {
	lusona_tables[lp] = build_lusona_table(LUSONA_PRESETS[lp][0], LUSONA_PRESETS[lp][1]);
}

// ── Transport ──

var ms_per_step = 125; // default 120bpm

// ── Tick timer ──

var tick_task = null;
var prev_output = [0, 0, 0, 0, 0, 0]; // track for clearing old destination

// ── Shape evaluation ──

function eval_shape(voice, s, ph) {
	// ph is 0..1 (phase within one cycle)
	switch (s) {
		case 0: // Sine
			return Math.sin(ph * TWO_PI);
		case 1: // Triangle
			return (ph < 0.5) ? (4 * ph - 1) : (3 - 4 * ph);
		case 2: // Saw Up
			return 2 * ph - 1;
		case 3: // Saw Down
			return 1 - 2 * ph;
		case 4: // Square
			return (ph < 0.5) ? 1 : -1;
		case 5: // Sample & Hold
			return sh_val[voice]; // updated at cycle boundary
		case 6: // Lorenz X
			return Math.max(-1, Math.min(1, lorenz[voice].x / 20));
		case 7: // Lorenz Y
			return Math.max(-1, Math.min(1, lorenz[voice].y / 20));
		default:
			// 8-13: Lusona wavetables
			var table_idx = s - 8;
			if (table_idx >= 0 && table_idx < lusona_tables.length) {
				var tbl = lusona_tables[table_idx];
				var pos = ph * tbl.length;
				var idx0 = Math.floor(pos) % tbl.length;
				var idx1 = (idx0 + 1) % tbl.length;
				var frac = pos - Math.floor(pos);
				return tbl[idx0] * (1 - frac) + tbl[idx1] * frac;
			}
			return 0;
	}
}

// ── Lorenz step (called every tick for all voices) ──

function lorenz_tick(dt) {
	for (var i = 0; i < NUM_VOICES; i++) {
		var L = lorenz[i];
		var dx = SIGMA * (L.y - L.x) * dt;
		var dy = (L.x * (chaos_rho - L.z) - L.y) * dt;
		var dz = (L.x * L.y - BETA * L.z) * dt;
		L.x += dx;
		L.y += dy;
		L.z += dz;
		// Clamp to prevent divergence
		if (L.x > 50) L.x = 50;
		if (L.x < -50) L.x = -50;
		if (L.y > 50) L.y = 50;
		if (L.y < -50) L.y = -50;
		if (L.z > 80) L.z = 80;
		if (L.z < 0) L.z = 0;
	}
}

// ── Kuramoto coupling step ──

function kuramoto_tick(dt_sec) {
	if (coupling_K === 0) return;

	// Compute phase deltas
	var dtheta = [0, 0, 0, 0, 0, 0];
	for (var i = 0; i < NUM_VOICES; i++) {
		var sum = 0;
		for (var j = 0; j < NUM_VOICES; j++) {
			var w = adj[i * 6 + j];
			if (w > 0) {
				sum += w * Math.sin(phase[j] * TWO_PI - phase[i] * TWO_PI);
			}
		}
		dtheta[i] = coupling_K * sum * dt_sec;
	}

	// Apply (phase is 0..1, so divide by TWO_PI)
	for (var k = 0; k < NUM_VOICES; k++) {
		phase[k] += dtheta[k] / TWO_PI;
	}
}

// ── Main tick function ──

function tick() {
	var dt_sec = TICK_MS / 1000;

	// Advance Lorenz (cheap, always running)
	lorenz_tick(dt_sec);

	// Kuramoto coupling
	kuramoto_tick(dt_sec);

	// Process each voice
	for (var i = 0; i < NUM_VOICES; i++) {
		var prev_ph = phase[i];

		// Advance phase
		phase[i] += rate[i] * dt_sec;

		// S&H: latch new random at cycle boundary
		if (shape[i] === 5 && Math.floor(phase[i]) !== Math.floor(prev_ph)) {
			sh_val[i] = Math.random() * 2 - 1;
		}

		// Wrap phase to 0..1
		phase[i] = phase[i] - Math.floor(phase[i]);

		// Evaluate shape
		var raw = eval_shape(i, shape[i], phase[i]);

		// Apply depth and scale for destination
		var d = dest[i];
		if (d === 0 || depth[i] === 0) {
			// Clear any previous output
			clear_output(i);
			continue;
		}

		var value = raw * depth[i] * DEST_SCALE[d];

		// Route to destination
		route_output(i, d, value);

		// Display
		outlet(0, i, raw * depth[i]);
	}
}

// ── Routing ──

function route_output(voice, d, value) {
	if (d === 1) {
		// Pan: send to mixer via messnamed
		messnamed("v" + voice + "_pan_lfo", value);
	} else {
		// Gen~ params via messnamed to voice param receiver
		messnamed("v" + voice + "_p", DEST_PARAM[d], value);
	}
}

function clear_output(voice) {
	// Zero out whatever was previously routed
	messnamed("v" + voice + "_pan_lfo", 0);
	messnamed("v" + voice + "_p", "lfo_pitch_off", 0);
	messnamed("v" + voice + "_p", "lfo_stress_off", 0);
	messnamed("v" + voice + "_p", "lfo_bloom_off", 0);
	messnamed("v" + voice + "_p", "lfo_decay_off", 0);
	messnamed("v" + voice + "_p", "lfo_mist_off", 0);
	messnamed("v" + voice + "_p", "lfo_heat_off", 0);
	messnamed("v" + voice + "_p", "lfo_drift_off", 0);
	messnamed("v" + voice + "_p", "lfo_density_off", 0);
}

// ── Start/stop timer ──

function start_tick() {
	if (tick_task) tick_task.cancel();
	tick_task = new Task(tick_repeat);
	tick_task.interval = TICK_MS;
	tick_task.repeat();
}

function tick_repeat() {
	tick();
}

function stop_tick() {
	if (tick_task) {
		tick_task.cancel();
		tick_task = null;
	}
	// Zero all outputs
	for (var i = 0; i < NUM_VOICES; i++) {
		clear_output(i);
	}
}

// Auto-start on load
function loadbang() {
	start_tick();
}

// ── Parameter setters ──

function lfo_rate(voice, val) {
	voice = Math.floor(voice);
	if (voice >= 0 && voice < NUM_VOICES) {
		// 0-127 → 0.05-20Hz exponential
		rate[voice] = 0.05 * Math.pow(400, val / 127);
	}
}

function lfo_depth(voice, val) {
	voice = Math.floor(voice);
	if (voice >= 0 && voice < NUM_VOICES) {
		depth[voice] = Math.max(0, Math.min(1, val / 127));
	}
}

function lfo_shape(voice, val) {
	voice = Math.floor(voice);
	val = Math.floor(val);
	if (voice >= 0 && voice < NUM_VOICES && val >= 0 && val <= 13) {
		shape[voice] = val;
	}
}

function lfo_dest(voice, val) {
	voice = Math.floor(voice);
	val = Math.floor(val);
	if (voice >= 0 && voice < NUM_VOICES && val >= 0 && val < DEST_NAMES.length) {
		// Clear old destination before switching
		clear_output(voice);
		dest[voice] = val;
	}
}

function master_rate(val) {
	for (var i = 0; i < NUM_VOICES; i++) lfo_rate(i, val);
}

function master_depth(val) {
	for (var i = 0; i < NUM_VOICES; i++) lfo_depth(i, val);
}

function coupling(val) {
	// 0-127 → 0-5
	coupling_K = Math.max(0, Math.min(5, val / 127 * 5));
}

function topology(val) {
	val = Math.floor(val);
	if (val >= 0 && val < TOPOS.length) {
		topo_idx = val;
		adj = TOPOS[val];
	}
}

function set_chaos_rho(val) {
	// 0-127 → 0-40
	chaos_rho = Math.max(0, Math.min(40, val / 127 * 40));
}

function tempo(ms) {
	ms_per_step = Math.max(10, ms);
}

// ── State management for kit manager ──

function get_state() {
	var out = [];
	for (var i = 0; i < NUM_VOICES; i++) {
		out.push(rate[i]);
		out.push(depth[i]);
		out.push(shape[i]);
		out.push(dest[i]);
	}
	// Globals
	out.push(coupling_K);
	out.push(topo_idx);
	out.push(chaos_rho);
	outlet(1, "lfo_state", out);
}

function restore_voice(voice, r, d, s, dst) {
	voice = Math.floor(voice);
	if (voice >= 0 && voice < NUM_VOICES) {
		rate[voice] = r;
		depth[voice] = d;
		shape[voice] = Math.floor(s);
		dest[voice] = Math.floor(dst);
	}
}

function restore_globals(k, topo, rho) {
	coupling_K = (k !== undefined) ? k : 0;
	if (topo !== undefined) {
		topo_idx = Math.floor(topo);
		if (topo_idx >= 0 && topo_idx < TOPOS.length) {
			adj = TOPOS[topo_idx];
		}
	}
	chaos_rho = (rho !== undefined) ? rho : 28;
}

// ── Message handler ──

function anything() {
	var msg = messagename;
	var args = arrayfromargs(arguments);

	if (inlet === 0) {
		// Transport tempo
		if (msg === "tempo") {
			tempo(args[0]);
		} else if (!isNaN(parseFloat(msg))) {
			tempo(parseFloat(msg));
		}
		return;
	}

	if (inlet === 1) {
		if (msg === "lfo_rate") lfo_rate(args[0], args[1]);
		else if (msg === "lfo_depth") lfo_depth(args[0], args[1]);
		else if (msg === "lfo_shape") lfo_shape(args[0], args[1]);
		else if (msg === "lfo_dest") lfo_dest(args[0], args[1]);
		else if (msg === "master_rate") master_rate(args[0]);
		else if (msg === "master_depth") master_depth(args[0]);
		else if (msg === "coupling") coupling(args[0]);
		else if (msg === "topology") topology(args[0]);
		else if (msg === "chaos_rho") set_chaos_rho(args[0]);
		else if (msg === "get_state") get_state();
		else if (msg === "restore_voice") restore_voice(args[0], args[1], args[2], args[3], args[4]);
		else if (msg === "restore_globals") restore_globals(args[0], args[1], args[2]);
		else if (msg === "start") start_tick();
		else if (msg === "stop") stop_tick();
	}
}

function msg_float(v) {
	if (inlet === 0) tempo(v);
}

function msg_int(v) {
	if (inlet === 0) tempo(v);
}
