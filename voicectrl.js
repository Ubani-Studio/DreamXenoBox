// DREAM XENO BOX — Voice Parameter Controller
// inlet 0: voice selection (int 0-5) or "init" message
// inlet 1: param changes from UI (message name = param, arg = value)
// outlets 0-5: param messages to gen~ voice 0-5
// outlet 6: UI update messages when voice changes (param_name scaled_value)

inlets = 2;
outlets = 7;

var PARAM_NAMES = [
	"pitch", "decay_ms", "exciter_type", "body_type",
	"stress", "bloom", "scar", "weight",
	"mist", "heat_macro", "drift_param", "density_param"
];

// Min/max for dial scaling (dials send 0-127, we scale to real range)
var RANGES = {
	pitch:        [10, 130],
	decay_ms:     [10, 4000],
	exciter_type: [0, 1],
	body_type:    [0, 1],
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

// Param change from UI dial (arrives as e.g. "stress 64" where 64 is 0-127)
function anything() {
	if (inlet === 1) {
		var param = messagename;
		var raw = arrayfromargs(arguments)[0];
		if (RANGES[param] !== undefined) {
			var r = RANGES[param];
			var val;
			// Integer params: round to 0 or 1
			if (param === "exciter_type" || param === "body_type") {
				val = raw > 63 ? 1 : 0;
			} else {
				val = r[0] + (raw / 127.0) * (r[1] - r[0]);
			}
			voices[selected][param] = val;
			outlet(selected, param, val);
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
		if (p === "exciter_type" || p === "body_type") {
			scaled = v[p] > 0.5 ? 127 : 0;
		} else {
			scaled = Math.round(((v[p] - r[0]) / (r[1] - r[0])) * 127);
		}
		outlet(6, p, scaled);
	}
}
