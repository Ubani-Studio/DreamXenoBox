// MAUD — Kit Manager
// inlet 0: messages (save, load, name, getnames)
// outlet 0: voice param restore messages (voice_index param_name value) → voicectrl
// outlet 1: pattern restore messages (col row value) → matrixctrl
// outlet 2: length restore messages (setlength_idx voice idx) → sequencer
// outlet 3: status/UI messages (kit_name, kit_names list)
// outlet 4: flam restore messages → flamengine
// outlet 5: level restore messages → send v{i}_level
// outlet 6: LFO restore messages → lfoengine
// outlet 7: swing/groove restore messages → flamengine

inlets = 1;
outlets = 8;

var NUM_VOICES = 6;
var MAX_STEPS = 32;
var NUM_SLOTS = 8;

var PARAM_NAMES = [
	"pitch", "decay_ms", "exciter_type", "body_type",
	"stress", "bloom", "scar", "weight",
	"mist", "heat_macro", "drift_param", "density_param",
	"pan"
];

// 8 kit slots
var kits = new Array(NUM_SLOTS);
var kit_names = new Array(NUM_SLOTS);
for (var i = 0; i < NUM_SLOTS; i++) {
	kits[i] = null;
	kit_names[i] = "---";
}

// Current state (updated by voicectrl and sequencer via messages)
var cur_voices = [];
var cur_patterns = [];
var cur_lengths = [16, 16, 16, 16, 16, 16];
var cur_flam = [];
for (var _fi = 0; _fi < NUM_VOICES; _fi++) {
	cur_flam[_fi] = {subdivision: 0, probability: 50, humanize: 0, burst: 1, pitch_mod: 0, vel_decay: 0};
}
var cur_levels = [0.85, 0.7, 0.6, 0.65, 0.75, 0.55];

// Swing + groove state (tracks flamengine)
var cur_swing = 0;
var cur_groove = [0, 0, 0, 0, 0, 0];

// LFO state (tracks lfoengine)
var cur_lfo = [];
for (var _li = 0; _li < NUM_VOICES; _li++) {
	cur_lfo[_li] = {rate: 0.5, depth: 0, shape: 0, dest: 0};
}
var cur_lfo_globals = {coupling_K: 0, topo_idx: 0, chaos_rho: 28};

// Length index map (matches sequencer.js)
var LEN_MAP = [4, 8, 12, 16, 24, 32];

// Initialize current voice state from voicectrl defaults
function init_defaults() {
	cur_voices = [
		{pitch:30, decay_ms:55, exciter_type:0, body_type:2,
		 stress:0.1, bloom:0.1, scar:0.05, weight:0.95,
		 mist:0.0, heat_macro:0.3, drift_param:0.05, density_param:0.5,
		 pan:0.35},
		{pitch:62, decay_ms:18, exciter_type:0, body_type:0,
		 stress:0.4, bloom:0.2, scar:0.4, weight:0.4,
		 mist:0.15, heat_macro:0.5, drift_param:0.05, density_param:0.5,
		 pan:0.65},
		{pitch:84, decay_ms:12, exciter_type:1, body_type:0,
		 stress:0.5, bloom:0.15, scar:0.6, weight:0.1,
		 mist:0.3, heat_macro:0.7, drift_param:0.1, density_param:0.7,
		 pan:0.80},
		{pitch:52, decay_ms:22, exciter_type:1, body_type:1,
		 stress:0.2, bloom:0.3, scar:0.15, weight:0.6,
		 mist:0.05, heat_macro:0.2, drift_param:0.02, density_param:0.4,
		 pan:0.20},
		{pitch:40, decay_ms:32, exciter_type:0, body_type:3,
		 stress:0.7, bloom:0.4, scar:0.7, weight:0.8,
		 mist:0.2, heat_macro:0.4, drift_param:0.15, density_param:0.5,
		 pan:0.50},
		{pitch:72, decay_ms:60, exciter_type:1, body_type:2,
		 stress:0.6, bloom:0.95, scar:0.4, weight:0.2,
		 mist:0.9, heat_macro:0.4, drift_param:0.05, density_param:0.4,
		 pan:0.50}
	];

	// Empty. The instrument loads with nothing playing; save_default is how a
	// pattern becomes the thing it opens with.
	cur_patterns = [
		[0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0],
		[0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0],
		[0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0],
		[0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0],
		[0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0],
		[0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0]
	];
	// Pad patterns to MAX_STEPS
	for (var i = 0; i < NUM_VOICES; i++) {
		while (cur_patterns[i].length < MAX_STEPS) cur_patterns[i].push(0);
	}

	cur_lengths = [16, 16, 16, 16, 16, 16];

	// Save as Kit 1 "INIT"
	kit_names[0] = "INIT";
	kits[0] = snapshot();

	// If a saved default exists on disk, it wins. This is what makes "how it is
	// now" survive a reopen: the built-ins above are only the fallback for a
	// patch that has never had one written.
	var d = read_default();
	if (d !== null) {
		kits[1] = d;
		kit_names[1] = "DEFAULT";
		restore_kit(d);
		outlet(3, "status", "loaded saved default");
	}
}

var DEFAULT_FILE = "maud_default.json";

// Write the current state to disk as the load default. Everything the kit
// system already captures — patterns, lengths, voice params, flam, levels,
// swing, groove, LFO — goes in one file beside the patch.
function save_default() {
	try {
		var f = new File(DEFAULT_FILE, "write", "TEXT");
		if (!f.isopen) {
			outlet(3, "status", "could not open " + DEFAULT_FILE + " for write");
			return;
		}
		f.writeline(JSON.stringify(snapshot()));
		f.close();
		outlet(3, "status", "saved current state as the load default");
	} catch (e) {
		outlet(3, "status", "save_default failed: " + e.message);
	}
}

// Read it back, if it exists. Returns null when there is no file, so the
// built-in defaults still apply on a fresh install.
function read_default() {
	try {
		var f = new File(DEFAULT_FILE, "read", "TEXT");
		if (!f.isopen) return null;
		var txt = "", line;
		while ((line = f.readline()) !== null && line !== undefined) txt += line;
		f.close();
		return txt.length ? JSON.parse(txt) : null;
	} catch (e) {
		return null;
	}
}

// Forget it and go back to the built-in defaults.
function clear_default() {
	try {
		var f = new File(DEFAULT_FILE, "write", "TEXT");
		if (f.isopen) { f.writeline(""); f.close(); }
		outlet(3, "status", "load default cleared");
	} catch (e) {}
}

// Take a snapshot of current state
function snapshot() {
	var snap = {
		voices: [],
		patterns: [],
		lengths: cur_lengths.slice(),
		flam: [],
		levels: cur_levels.slice(),
		swing: cur_swing,
		groove: cur_groove.slice(),
		lfo: [],
		lfo_globals: {
			coupling_K: cur_lfo_globals.coupling_K,
			topo_idx: cur_lfo_globals.topo_idx,
			chaos_rho: cur_lfo_globals.chaos_rho
		}
	};
	for (var i = 0; i < NUM_VOICES; i++) {
		var v = {};
		for (var j = 0; j < PARAM_NAMES.length; j++) {
			var p = PARAM_NAMES[j];
			v[p] = cur_voices[i][p];
		}
		snap.voices.push(v);
		snap.patterns.push(cur_patterns[i].slice());
		snap.flam.push({
			subdivision: cur_flam[i].subdivision,
			probability: cur_flam[i].probability,
			humanize: cur_flam[i].humanize,
			burst: cur_flam[i].burst,
			pitch_mod: cur_flam[i].pitch_mod,
			vel_decay: cur_flam[i].vel_decay
		});
		snap.lfo.push({
			rate: cur_lfo[i].rate,
			depth: cur_lfo[i].depth,
			shape: cur_lfo[i].shape,
			dest: cur_lfo[i].dest
		});
	}
	return snap;
}

// Update current state when voicectrl changes a param
function voice_param(voice, param, value) {
	voice = Math.floor(voice);
	if (voice >= 0 && voice < NUM_VOICES && cur_voices[voice]) {
		cur_voices[voice][param] = value;
	}
}

// Update current state when sequencer pattern changes
function pattern_cell(col, row, val) {
	col = Math.floor(col);
	row = Math.floor(row);
	if (row >= 0 && row < NUM_VOICES && col >= 0 && col < MAX_STEPS) {
		cur_patterns[row][col] = val > 0 ? 1 : 0;
	}
}

// Update current state when length changes
function voice_length(voice, len_idx) {
	voice = Math.floor(voice);
	len_idx = Math.floor(len_idx);
	if (voice >= 0 && voice < NUM_VOICES && len_idx >= 0 && len_idx < LEN_MAP.length) {
		cur_lengths[voice] = LEN_MAP[len_idx];
	}
}

// Update current flam state (receives "flam_param <param> <voice> <value>")
function flam_param(param, voice, value) {
	voice = Math.floor(voice);
	if (voice >= 0 && voice < NUM_VOICES && cur_flam[voice]) {
		cur_flam[voice][param] = value;
	}
}

// Update current level state
function voice_level(voice, value) {
	voice = Math.floor(voice);
	if (voice >= 0 && voice < NUM_VOICES) {
		cur_levels[voice] = value;
	}
}

// Update swing state (from flamengine)
function swing_param(value) {
	cur_swing = value;
}

// Update groove state (from flamengine)
function groove_param(voice, value) {
	voice = Math.floor(voice);
	if (voice >= 0 && voice < NUM_VOICES) {
		cur_groove[voice] = value;
	}
}

// Update LFO per-voice state (from lfoengine)
function lfo_param(param, voice, value) {
	voice = Math.floor(voice);
	if (voice >= 0 && voice < NUM_VOICES && cur_lfo[voice]) {
		cur_lfo[voice][param] = value;
	}
}

// Update LFO global state (from lfoengine)
function lfo_global_param(param, value) {
	if (cur_lfo_globals[param] !== undefined) {
		cur_lfo_globals[param] = value;
	}
}

// Save current state to slot
function save(slot) {
	slot = Math.floor(slot);
	if (slot < 0 || slot >= NUM_SLOTS) return;
	kits[slot] = snapshot();
	if (kit_names[slot] === "---") {
		kit_names[slot] = "KIT " + (slot + 1);
	}
	outlet(3, "status", "Saved to " + kit_names[slot]);
	send_names();
}

// Load kit from slot
function load(slot) {
	slot = Math.floor(slot);
	if (slot < 0 || slot >= NUM_SLOTS || kits[slot] === null) {
		outlet(3, "status", "Empty slot");
		return;
	}
	restore_kit(kits[slot]);
}

// The restore body, callable with a kit object rather than only a slot index.
function restore_kit(kit) {
	if (!kit) return;

	// Restore voice params → outlet 0 (to voicectrl via "restore" message)
	for (var i = 0; i < NUM_VOICES; i++) {
		var v = kit.voices[i];
		for (var j = 0; j < PARAM_NAMES.length; j++) {
			var p = PARAM_NAMES[j];
			outlet(0, "restore", i, p, v[p]);
		}
		// Update our current state
		for (var j2 = 0; j2 < PARAM_NAMES.length; j2++) {
			cur_voices[i][PARAM_NAMES[j2]] = v[PARAM_NAMES[j2]];
		}
		// Pan goes to mixer via messnamed (voicectrl.restore handles this)
	}

	// Clear matrixctrl then set pattern → outlet 1
	outlet(1, "clear");
	for (var i2 = 0; i2 < NUM_VOICES; i2++) {
		var pat = kit.patterns[i2];
		for (var s = 0; s < MAX_STEPS; s++) {
			if (pat[s] > 0) {
				outlet(1, s, i2, 1);
			}
		}
		cur_patterns[i2] = pat.slice();
	}

	// Restore lengths → outlet 2
	for (var i3 = 0; i3 < NUM_VOICES; i3++) {
		var len = kit.lengths[i3];
		cur_lengths[i3] = len;
		// Find length index
		var idx = 3; // default 16
		for (var k = 0; k < LEN_MAP.length; k++) {
			if (LEN_MAP[k] === len) { idx = k; break; }
		}
		outlet(2, "setlength_idx", i3, idx);
	}

	// Restore levels → outlet 5
	if (kit.levels) {
		for (var i5 = 0; i5 < NUM_VOICES; i5++) {
			cur_levels[i5] = kit.levels[i5];
			outlet(5, i5, kit.levels[i5]);
		}
	}

	// Restore flam params → outlet 4 (now includes pitch_mod and vel_decay)
	if (kit.flam) {
		for (var i4 = 0; i4 < NUM_VOICES; i4++) {
			var fl = kit.flam[i4];
			if (fl) {
				outlet(4, "restore_voice", i4,
					fl.subdivision, fl.probability, fl.humanize, fl.burst,
					fl.pitch_mod !== undefined ? fl.pitch_mod : 0,
					fl.vel_decay !== undefined ? fl.vel_decay : 0);
				cur_flam[i4].subdivision = fl.subdivision;
				cur_flam[i4].probability = fl.probability;
				cur_flam[i4].humanize = fl.humanize;
				cur_flam[i4].burst = fl.burst;
				cur_flam[i4].pitch_mod = fl.pitch_mod || 0;
				cur_flam[i4].vel_decay = fl.vel_decay || 0;
			}
		}
	}

	// Restore swing + groove → outlet 7 (to flamengine)
	if (kit.swing !== undefined) {
		cur_swing = kit.swing;
		outlet(7, "restore_swing_groove",
			kit.swing,
			kit.groove[0], kit.groove[1], kit.groove[2],
			kit.groove[3], kit.groove[4], kit.groove[5]);
		for (var ig = 0; ig < NUM_VOICES; ig++) {
			cur_groove[ig] = kit.groove[ig];
		}
	}

	// Restore LFO state → outlet 6 (to lfoengine)
	if (kit.lfo) {
		for (var i6 = 0; i6 < NUM_VOICES; i6++) {
			var lf = kit.lfo[i6];
			if (lf) {
				outlet(6, "restore_voice", i6, lf.rate, lf.depth, lf.shape, lf.dest);
				cur_lfo[i6].rate = lf.rate;
				cur_lfo[i6].depth = lf.depth;
				cur_lfo[i6].shape = lf.shape;
				cur_lfo[i6].dest = lf.dest;
			}
		}
		if (kit.lfo_globals) {
			var lg = kit.lfo_globals;
			outlet(6, "restore_globals",
				lg.coupling_K !== undefined ? lg.coupling_K : 0,
				lg.topo_idx !== undefined ? lg.topo_idx : 0,
				lg.chaos_rho !== undefined ? lg.chaos_rho : 28);
			cur_lfo_globals.coupling_K = lg.coupling_K || 0;
			cur_lfo_globals.topo_idx = lg.topo_idx || 0;
			cur_lfo_globals.chaos_rho = (lg.chaos_rho !== undefined) ? lg.chaos_rho : 28;
		}
	}

	outlet(3, "status", "Loaded " + kit_names[slot]);
	// Tell voicectrl to refresh UI
	outlet(0, "refresh_ui");
}

// Name a kit slot
function name(slot, nm) {
	slot = Math.floor(slot);
	if (slot >= 0 && slot < NUM_SLOTS) {
		kit_names[slot] = nm;
		send_names();
	}
}

// Send kit names to outlet 3 for UI display
function send_names() {
	for (var i = 0; i < NUM_SLOTS; i++) {
		outlet(3, "kit_name", i, kit_names[i]);
	}
}

function getnames() {
	send_names();
}

// Handle messages
function anything() {
	var msg = messagename;
	var args = arrayfromargs(arguments);

	if (msg === "save_default") { save_default(); return; }
	if (msg === "clear_default") { clear_default(); return; }
	if (msg === "save") {
		save(args[0]);
	} else if (msg === "load") {
		load(args[0]);
	} else if (msg === "name") {
		name(args[0], args.slice(1).join(" "));
	} else if (msg === "voice_param") {
		voice_param(args[0], args[1], args[2]);
	} else if (msg === "pattern_cell") {
		pattern_cell(args[0], args[1], args[2]);
	} else if (msg === "voice_length") {
		voice_length(args[0], args[1]);
	} else if (msg === "voice_level") {
		voice_level(args[0], args[1]);
	} else if (msg === "flam_param") {
		// args: param_name, voice_index, value
		flam_param(args[0], args[1], args[2]);
	} else if (msg === "swing_param") {
		swing_param(args[0]);
	} else if (msg === "groove_param") {
		groove_param(args[0], args[1]);
	} else if (msg === "lfo_param") {
		// args: param_name, voice_index, value
		lfo_param(args[0], args[1], args[2]);
	} else if (msg === "lfo_global_param") {
		// args: param_name, value
		lfo_global_param(args[0], args[1]);
	} else if (msg === "getnames") {
		getnames();
	} else if (msg === "init_defaults") {
		init_defaults();
	}
}
