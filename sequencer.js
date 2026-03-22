// DREAM XENO BOX — Step Sequencer Dispatcher
// 1 inlet (step number 0-15), 6 outlets (bang per voice)
// Outlet 0=Mass, 1=Vein, 2=Shard, 3=Husk, 4=Fault, 5=Halo

inlets = 1;
outlets = 6;

var patterns = [
	[1,0,0,0, 1,0,0,0, 1,0,0,0, 1,0,0,0],
	[0,0,1,0, 0,0,1,0, 0,0,1,0, 0,0,1,0],
	[1,0,1,1, 0,0,1,0, 1,0,1,1, 0,0,1,0],
	[0,0,0,0, 1,0,0,0, 0,0,0,0, 1,0,0,0],
	[1,0,0,0, 0,0,0,0, 1,0,0,0, 0,0,0,0],
	[0,0,0,1, 0,0,0,0, 0,0,0,1, 0,0,0,0]
];

function msg_int(step) {
	if (step < 0 || step > 15) return;
	for (var i = 5; i >= 0; i--) {
		if (patterns[i][step] > 0) {
			outlet(i, "bang");
		}
	}
}

function setpattern() {
	var args = arrayfromargs(arguments);
	var voice = Math.floor(args[0]);
	if (voice < 0 || voice > 5) return;
	for (var i = 0; i < 16 && i < args.length - 1; i++) {
		patterns[voice][i] = args[i + 1] > 0.5 ? 1 : 0;
	}
}

function setstep(voice, step, val) {
	voice = Math.floor(voice);
	step = Math.floor(step);
	if (voice >= 0 && voice < 6 && step >= 0 && step < 16) {
		patterns[voice][step] = val > 0.5 ? 1 : 0;
	}
}

function getpattern(voice) {
	voice = Math.floor(voice);
	if (voice >= 0 && voice < 6) {
		outlet(voice, patterns[voice]);
	}
}
