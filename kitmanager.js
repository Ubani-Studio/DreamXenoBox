// DREAM XENO BOX — Kit Manager
// inlet 0: messages (save, load, name, getnames)
// outlet 0: voice param restore messages (voice_index param_name value) → voicectrl
// outlet 1: pattern restore messages (col row value) → matrixctrl
// outlet 2: length restore messages (setlength_idx voice idx) → sequencer
// outlet 3: status/UI messages (kit_name, kit_names list)

inlets = 1;
outlets = 4;

var NUM_VOICES = 6;
var MAX_STEPS = 32;
var NUM_SLOTS = 8;

var PARAM_NAMES = [
	"pitch", "decay_ms", "exciter_type", "body_type",
	"stress", "bloom", "scar", "weight",
	"mist", "heat_macro", "drift_param", "density_param"
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

// Length index map (matches sequencer.js)
var LEN_MAP = [4, 8, 12, 16, 24, 32];

// Initialize current voice state from voicectrl defaults
function init_defaults() {
	cur_voices = [
		{pitch:30, decay_ms:1200, exciter_type:0, body_type:1,
		 stress:0.1, bloom:0.1, scar:0.05, weight:0.95,
		 mist:0.0, heat_macro:0.3, drift_param:0.05, density_param:0.5},
		{pitch:62, decay_ms:120, exciter_type:0, body_type:0,
		 stress:0.4, bloom:0.2, scar:0.4, weight:0.4,
		 mist:0.15, heat_macro:0.5, drift_param:0.05, density_param:0.5},
		{pitch:84, decay_ms:60, exciter_type:1, body_type:0,
		 stress:0.5, bloom:0.15, scar:0.6, weight:0.1,
		 mist:0.3, heat_macro:0.7, drift_param:0.1, density_param:0.7},
		{pitch:52, decay_ms:200, exciter_type:1, body_type:1,
		 stress:0.2, bloom:0.3, scar:0.15, weight:0.6,
		 mist:0.05, heat_macro:0.2, drift_param:0.02, density_param:0.4},
		{pitch:40, decay_ms:400, exciter_type:0, body_type:1,
		 stress:0.7, bloom:0.4, scar:0.7, weight:0.8,
		 mist:0.2, heat_macro:0.4, drift_param:0.15, density_param:0.5},
		{pitch:72, decay_ms:800, exciter_type:1, body_type:0,
		 stress:0.6, bloom:0.85, scar:0.4, weight:0.2,
		 mist:0.9, heat_macro:0.4, drift_param:0.05, density_param:0.4}
	];

	cur_patterns = [
		[1,0,0,0, 1,0,0,0, 1,0,0,0, 1,0,0,0],
		[0,0,1,0, 0,0,1,0, 0,0,1,0, 0,0,1,0],
		[1,0,1,1, 0,0,1,0, 1,0,1,1, 0,0,1,0],
		[0,0,0,0, 1,0,0,0, 0,0,0,0, 1,0,0,0],
		[1,0,0,0, 0,0,0,0, 1,0,0,0, 0,0,0,0],
		[0,0,0,1, 0,0,0,0, 0,0,0,1, 0,0,0,0]
	];
	// Pad patterns to MAX_STEPS
	for (var i = 0; i < NUM_VOICES; i++) {
		while (cur_patterns[i].length < MAX_STEPS) cur_patterns[i].push(0);
	}

	cur_lengths = [16, 16, 16, 16, 16, 16];

	// Save as Kit 1 "INIT"
	kit_names[0] = "INIT";
	kits[0] = snapshot();
}

// Take a snapshot of current state
function snapshot() {
	var snap = {
		voices: [],
		patterns: [],
		lengths: cur_lengths.slice()
	};
	for (var i = 0; i < NUM_VOICES; i++) {
		var v = {};
		for (var j = 0; j < PARAM_NAMES.length; j++) {
			var p = PARAM_NAMES[j];
			v[p] = cur_voices[i][p];
		}
		snap.voices.push(v);
		snap.patterns.push(cur_patterns[i].slice());
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

	var kit = kits[slot];

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
	} else if (msg === "getnames") {
		getnames();
	} else if (msg === "init_defaults") {
		init_defaults();
	}
}
