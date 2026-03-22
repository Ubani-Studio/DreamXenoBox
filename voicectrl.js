// DREAM XENO BOX — Voice Parameter Controller
// inlet 0: voice selection (int 0-5), "init", "restore", "refresh_ui"
// inlet 1: param changes from UI (message name = param, arg = value)
// outlets 0-5: param messages to gen~ voice 0-5
// outlet 6: UI update messages when voice changes (param_name scaled_value)
// outlet 7: kit manager notifications (voice_param voice param value)

inlets = 2;
outlets = 8;

var PARAM_NAMES = [
	"pitch", "decay_ms", "exciter_type", "body_type",
	"stress", "bloom", "scar", "weight",
	"mist", "heat_macro", "drift_param", "density_param"
];

// Min/max for dial scaling (dials send 0-127, we scale to real range)
// decay_ms: 0→5, 127→80. gen~ squares it: 25→6400ms actual
var RANGES = {
	pitch:        [10, 130],
	decay_ms:     [5, 80],
	exciter_type: [0, 1],
	body_type:    [0, 3],
	stress:       [0, 1],
	bloom:        [0, 1],
	scar:         [0, 1],
	weight:       [0, 1],
	mist:         [0, 1],
	heat_macro:   [0, 1],
	drift_param:  [0, 1],
	density_param:[0, 1]
};

var voices = [
	{pitch:30, decay_ms:55, exciter_type:0, body_type:2,
	 stress:0.1, bloom:0.1, scar:0.05, weight:0.95,
	 mist:0.0, heat_macro:0.3, drift_param:0.05, density_param:0.5},
	{pitch:62, decay_ms:18, exciter_type:0, body_type:0,
	 stress:0.4, bloom:0.2, scar:0.4, weight:0.4,
	 mist:0.15, heat_macro:0.5, drift_param:0.05, density_param:0.5},
	{pitch:84, decay_ms:12, exciter_type:1, body_type:0,
	 stress:0.5, bloom:0.15, scar:0.6, weight:0.1,
	 mist:0.3, heat_macro:0.7, drift_param:0.1, density_param:0.7},
	{pitch:52, decay_ms:22, exciter_type:1, body_type:1,
	 stress:0.2, bloom:0.3, scar:0.15, weight:0.6,
	 mist:0.05, heat_macro:0.2, drift_param:0.02, density_param:0.4},
	{pitch:40, decay_ms:32, exciter_type:0, body_type:3,
	 stress:0.7, bloom:0.4, scar:0.7, weight:0.8,
	 mist:0.2, heat_macro:0.4, drift_param:0.15, density_param:0.5},
	{pitch:72, decay_ms:45, exciter_type:1, body_type:0,
	 stress:0.6, bloom:0.85, scar:0.4, weight:0.2,
	 mist:0.9, heat_macro:0.4, drift_param:0.05, density_param:0.4}
];

var selected = 0;

function msg_int(v) {
	if (inlet === 0) {
		selected = Math.max(0, Math.min(5, Math.floor(v)));
		updateUI();
	}
}

// Send all voice presets to all gen~ instances
function init() {
	for (var i = 0; i < 6; i++) {
		var v = voices[i];
		for (var j = 0; j < PARAM_NAMES.length; j++) {
			var p = PARAM_NAMES[j];
			outlet(i, p, v[p]);
		}
	}
	updateUI();
}

// Restore a single voice param from kit manager
function restore(voice_idx, param, value) {
	voice_idx = Math.floor(voice_idx);
	if (voice_idx >= 0 && voice_idx < 6 && RANGES[param] !== undefined) {
		voices[voice_idx][param] = value;
		outlet(voice_idx, param, value);
	}
}

// Refresh UI dials after kit load
function refresh_ui() {
	updateUI();
}

// Param change from UI dial (arrives as e.g. "stress 64" where 64 is 0-127)
function anything() {
	var msg = messagename;
	var args = arrayfromargs(arguments);

	if (inlet === 0) {
		if (msg === "restore") {
			restore(args[0], args[1], args[2]);
		} else if (msg === "refresh_ui") {
			refresh_ui();
		}
		return;
	}

	if (inlet === 1) {
		var param = msg;
		var raw = args[0];
		if (RANGES[param] !== undefined) {
			var r = RANGES[param];
			var val;
			if (param === "exciter_type") {
				val = raw > 63 ? 1 : 0;
			} else if (param === "body_type") {
				if (raw < 32) val = 0;
				else if (raw < 64) val = 1;
				else if (raw < 96) val = 2;
				else val = 3;
			} else {
				val = r[0] + (raw / 127.0) * (r[1] - r[0]);
			}
			voices[selected][param] = val;
			outlet(selected, param, val);
			// Notify kit manager of change
			outlet(7, "voice_param", selected, param, val);
		}
	}
}

// Send current voice params to outlet 6 for UI dial update (as 0-127 scaled)
function updateUI() {
	var v = voices[selected];
	for (var j = 0; j < PARAM_NAMES.length; j++) {
		var p = PARAM_NAMES[j];
		var r = RANGES[p];
		var scaled;
		if (p === "exciter_type") {
			scaled = v[p] > 0.5 ? 127 : 0;
		} else if (p === "body_type") {
			scaled = Math.round(v[p] * 42.3);
		} else {
			scaled = Math.round(((v[p] - r[0]) / (r[1] - r[0])) * 127);
		}
		outlet(6, p, scaled);
	}
}
