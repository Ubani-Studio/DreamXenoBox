// MAUD — Polymetric Step Sequencer
// inlet 0: step number (from counter, 0+)
// inlet 1: messages (matrixctrl output, setlength, clear)
// outlets 0-5: bang per voice trigger
// outlet 6: global step number (passthrough for display)

inlets = 2;
outlets = 8;

var NUM_VOICES = 6;
var MAX_STEPS = 32;

var patterns = [];
var lengths = [16, 16, 16, 16, 16, 16];

// Empty at load. An instrument that arrives with somebody else's pattern in it
// is an instrument you have to clear before you can start.
var defaults = [
	[0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0],
	[0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0],
	[0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0],
	[0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0],
	[0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0],
	[0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0]
];

for (var i = 0; i < NUM_VOICES; i++) {
	patterns[i] = new Array(MAX_STEPS);
	for (var j = 0; j < MAX_STEPS; j++) {
		patterns[i][j] = (j < defaults[i].length) ? defaults[i][j] : 0;
	}
}

// Pre-allocated indicator array (reused every step to avoid GC pressure)
var ind = new Array(MAX_STEPS);
for (var k = 0; k < MAX_STEPS; k++) ind[k] = 0;
var prev_display_step = -1;

// Pre-allocated length map (avoid per-call allocation in setlength_idx)
var LEN_MAP = [4, 8, 12, 16, 24, 32];

function msg_int(step) {
	if (inlet === 0) {
		for (var i = 5; i >= 0; i--) {
			var s = step % lengths[i];
			if (patterns[i][s] > 0) {
				outlet(i, step);
			}
		}
		outlet(6, step);
		// Step indicator: mutate pre-allocated array in-place (no GC).
		// The cycle is the LONGEST active voice length, not the grid width. It
		// was step % MAX_STEPS, so with every length at 16 the highlight ran all
		// 32 columns while the music repeated every 16: the highlight went round
		// twice per loop and never lined up with what you heard.
		var cycle = lengths[0];
		for (var c = 1; c < NUM_VOICES; c++) {
			if (lengths[c] > cycle) cycle = lengths[c];
		}
		var display_step = step % cycle;
		if (prev_display_step >= 0) ind[prev_display_step] = 0;
		ind[display_step] = 1;
		prev_display_step = display_step;
		outlet(7, ind);
	}
}

// matrixctrl sends col row value as a list
function list() {
	if (inlet === 1) {
		var args = arrayfromargs(arguments);
		if (args.length >= 3) {
			var col = Math.floor(args[0]);
			var row = Math.floor(args[1]);
			var val = args[2] > 0 ? 1 : 0;
			if (row >= 0 && row < NUM_VOICES && col >= 0 && col < MAX_STEPS) {
				patterns[row][col] = val;
			}
		}
	}
}

function setlength(voice, len) {
	voice = Math.floor(voice);
	len = Math.floor(len);
	if (voice >= 0 && voice < NUM_VOICES && len >= 1 && len <= MAX_STEPS) {
		lengths[voice] = len;
	}
}

// Map umenu index to step count: 0=4, 1=8, 2=12, 3=16, 4=24, 5=32
function setlength_idx(voice, idx) {
	idx = Math.floor(idx);
	voice = Math.floor(voice);
	if (idx >= 0 && idx < LEN_MAP.length && voice >= 0 && voice < NUM_VOICES) {
		lengths[voice] = LEN_MAP[idx];
	}
}

function clear(voice) {
	voice = Math.floor(voice);
	if (voice >= 0 && voice < NUM_VOICES) {
		for (var j = 0; j < MAX_STEPS; j++) patterns[voice][j] = 0;
	}
}

function clearall() {
	for (var i = 0; i < NUM_VOICES; i++)
		for (var j = 0; j < MAX_STEPS; j++) patterns[i][j] = 0;
}
