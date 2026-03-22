#!/usr/bin/env python3
"""Generate DreamXenoBox.maxpat — 6-voice polymetric sequencer groovebox."""
import json

# ── Voice engine codebox (no comments) ──
VOICE_CODE = r"""Param pitch(60);
Param decay_ms(200);
Param exciter_type(0);
Param body_type(0);
Param stress(0.3);
Param bloom(0.3);
Param scar(0);
Param weight(0.5);
Param mist(0.2);
Param heat_macro(0.3);
Param drift_param(0);
Param density_param(0.5);

History prev_trig(0);
History pressure(0);
History heat_state(0);
History fatigue(0);
History exc_car_phase(0);
History exc_mod_phase(0);
History exc_env(0);
History noise_filt(0);
History ry1_a(0);
History ry2_a(0);
History ry1_b(0);
History ry2_b(0);
History ry1_c(0);
History ry2_c(0);
History ry1_d(0);
History ry2_d(0);
History comb_lp(0);
History halo_env(0);
History main_env(0);
Delay comb_d(8820);

trig_on = (in1 > 0.5) * (prev_trig <= 0.5);
vel = in1;
prev_trig = in1;

if (trig_on) {
    pressure = min(pressure + vel * (0.3 + stress * 0.7) * (1 - pressure), 1);
    fatigue = min(fatigue + 0.02 * (1 - fatigue), 1);
    exc_env = 1;
    halo_env = vel * mist;
    main_env = vel;
}

p_decay = 0.00002 + (1 - stress) * 0.00008;
pressure = pressure * (1 - p_decay);
heat_state = heat_state + (pressure - heat_state) * 0.0002;
heat_state = heat_state * (1 - 0.00005);
fatigue = fatigue * (1 - 0.000002);
stiffness = fatigue * 0.6 + pressure * 0.4;

eff_heat = clamp(heat_macro + heat_state * 0.5, 0, 1);
eff_scar = clamp(scar + pressure * stress, 0, 1);
p_mod = pitch + noise() * pressure * drift_param * 2;
base_freq = mtof(clamp(p_mod, 10, 130));
w_scale = 1 - weight * 0.8;
body_freq = base_freq * w_scale;

e_decay = 0.001 + density_param * 0.003;
exc_env = exc_env * (1 - e_decay);

exciter_out = 0;
if (exciter_type < 0.5) {
    fm_r = 1.41 + eff_heat * 2;
    mf = base_freq * fm_r;
    fm_idx = (8 + eff_heat * 12) * exc_env;
    exc_mod_phase = wrap(exc_mod_phase + mf / samplerate, 0, 1);
    mod_sig = sin(exc_mod_phase * twopi) * fm_idx;
    exc_car_phase = wrap(exc_car_phase + base_freq / samplerate, 0, 1);
    exciter_out = sin(exc_car_phase * twopi + mod_sig) * exc_env;
} else {
    n = noise();
    cutoff = base_freq * (2 + eff_heat * 8);
    coeff = clamp(1 - exp(-twopi * cutoff / samplerate), 0.001, 0.999);
    noise_filt = noise_filt + (n - noise_filt) * coeff;
    exciter_out = noise_filt * 4 * exc_env;
}

body_out = 0;
eff_Q = clamp(0.995 - fatigue * 0.3, 0.8, 0.999);

if (body_type < 0.5) {
    w1 = twopi * body_freq * 1.0 / samplerate;
    r1 = eff_Q;
    ya = exciter_out + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;
    ry2_a = ry1_a; ry1_a = ya;
    w2 = twopi * body_freq * (1.347 + stiffness * 0.15) / samplerate;
    r2 = eff_Q * 0.99;
    yb = exciter_out + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;
    ry2_b = ry1_b; ry1_b = yb;
    w3 = twopi * body_freq * (1.891 + stiffness * 0.2) / samplerate;
    r3 = eff_Q * 0.98;
    yc = exciter_out + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;
    ry2_c = ry1_c; ry1_c = yc;
    w4 = twopi * body_freq * (2.534 + stiffness * 0.3) / samplerate;
    r4 = eff_Q * 0.97;
    yd = exciter_out + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;
    ry2_d = ry1_d; ry1_d = yd;
    body_out = (ya + yb * 0.7 + yc * 0.45 + yd * 0.3) * 0.25;
} else {
    d_samps = clamp(samplerate / body_freq, 2, 8000);
    fb = eff_Q * 0.9;
    delayed = comb_d.read(d_samps);
    d_coeff = 0.3 + fatigue * 0.4;
    comb_lp = comb_lp + (delayed - comb_lp) * d_coeff;
    comb_d.write(exciter_out + comb_lp * fb);
    body_out = delayed;
}

fold_d = 1 + eff_scar * 4;
fractured = body_out;
if (eff_scar > 0.01) {
    biased = body_out + pressure * 0.3;
    folded = asin(sin(biased * fold_d * 1.5707963)) * 0.6366197;
    fractured = body_out * (1 - eff_scar) + folded * eff_scar;
}

bl_decay = 0.0001 + bloom * 0.001;
halo_env = halo_env * (1 - bl_decay);
h_out = noise() * halo_env * clamp(body_freq * 2 / samplerate, 0.01, 0.49) * 4;

env_rate = 1.0 / max(decay_ms * samplerate / 1000, 1);
main_env = main_env * (1 - env_rate);

mixed = fractured * (1 - mist * 0.5) + h_out;
out1 = mixed * main_env;""".strip()

# ── Voice definitions ──
VOICES = [
    {"name": "MASS",  "idx": 0, "color": [0.9, 0.2, 0.2, 1.0], "level": 0.4,
     "midi_note": 36, "pattern": [1,0,0,0, 1,0,0,0, 1,0,0,0, 1,0,0,0]},
    {"name": "VEIN",  "idx": 1, "color": [0.8, 0.5, 0.1, 1.0], "level": 0.3,
     "midi_note": 38, "pattern": [0,0,1,0, 0,0,1,0, 0,0,1,0, 0,0,1,0]},
    {"name": "SHARD", "idx": 2, "color": [0.2, 0.7, 0.9, 1.0], "level": 0.25,
     "midi_note": 40, "pattern": [1,0,1,1, 0,0,1,0, 1,0,1,1, 0,0,1,0]},
    {"name": "HUSK",  "idx": 3, "color": [0.6, 0.5, 0.3, 1.0], "level": 0.3,
     "midi_note": 41, "pattern": [0,0,0,0, 1,0,0,0, 0,0,0,0, 1,0,0,0]},
    {"name": "FAULT", "idx": 4, "color": [0.5, 0.1, 0.6, 1.0], "level": 0.35,
     "midi_note": 43, "pattern": [1,0,0,0, 0,0,0,0, 1,0,0,0, 0,0,0,0]},
    {"name": "HALO",  "idx": 5, "color": [0.3, 0.8, 0.5, 1.0], "level": 0.2,
     "midi_note": 45, "pattern": [0,0,0,1, 0,0,0,0, 0,0,0,1, 0,0,0,0]},
]

MACROS = ["stress", "bloom", "scar", "weight", "mist", "heat_macro", "drift_param", "density_param"]
MACRO_LABELS = ["STRESS", "BLOOM", "SCAR", "WEIGHT", "MIST", "HEAT", "DRIFT", "DENSITY"]

# Layout constants
GRID_X = 70
GRID_Y = 120
GRID_W = 800
GRID_H = 144  # 6 rows × 24px each
GRID_COLS = 32
GRID_ROWS = 6

def gen_patcher():
    return {
        "fileversion": 1,
        "appversion": {"major": 9, "minor": 0, "revision": 0, "architecture": "x64", "modernui": 1},
        "rect": [0, 0, 800, 600],
        "editing_bgcolor": [0.65, 0.65, 0.65, 1.0],
        "boxes": [
            {"box": {"id": "g-in", "maxclass": "newobj", "numinlets": 1, "numoutlets": 1,
                     "outlettype": [""], "patching_rect": [50, 14, 30, 22], "text": "in 1"}},
            {"box": {"id": "g-cb", "maxclass": "codebox", "numinlets": 1, "numoutlets": 1,
                     "outlettype": [""], "patching_rect": [50, 50, 700, 450], "code": VOICE_CODE}},
            {"box": {"id": "g-out", "maxclass": "newobj", "numinlets": 1, "numoutlets": 0,
                     "patching_rect": [50, 520, 35, 22], "text": "out 1"}}
        ],
        "lines": [
            {"patchline": {"source": ["g-in", 0], "destination": ["g-cb", 0]}},
            {"patchline": {"source": ["g-cb", 0], "destination": ["g-out", 0]}}
        ]
    }

# Helpers
_boxes = []
_lines = []

def box(bid, cls, x, y, w, h, text=None, **kw):
    b = {"id": bid, "maxclass": cls,
         "numinlets": kw.pop("ni", 1), "numoutlets": kw.pop("no", 1),
         "patching_rect": [x, y, w, h]}
    if "ot" in kw: b["outlettype"] = kw.pop("ot")
    if text is not None: b["text"] = text
    b.update(kw)
    _boxes.append({"box": b})

def wire(src, so, dst, di):
    _lines.append({"patchline": {"source": [src, so], "destination": [dst, di]}})

def comment(bid, x, y, text, **kw):
    box(bid, "comment", x, y, kw.pop("w", len(text)*7+10), 20, text, no=0, **kw)

def build():
    _boxes.clear()
    _lines.clear()

    # ═══════════════════════ TITLE ═══════════════════════
    comment("title", 30, 10, "DREAM XENO BOX", w=600, fontsize=16.0, fontface=1)

    # ═══════════════════════ TRANSPORT ═══════════════════════
    box("tr-lb", "newobj", 30, 42, 58, 22, "loadbang", ot=["bang"])
    box("tr-bpmi", "message", 100, 42, 32, 22, "120", ni=2, ot=[""])
    comment("tr-bl", 145, 42, "BPM")
    box("tr-bpm", "number", 175, 42, 50, 22, no=2, ot=["", "bang"], minimum=30, maximum=300)
    box("tr-calc", "newobj", 240, 42, 135, 22, "expr 60000. / ($f1 * 4.)", ot=[""])
    comment("tr-pl", 400, 42, "PLAY")
    box("tr-play", "toggle", 440, 38, 30, 30, ot=["int"])
    box("tr-metro", "newobj", 440, 76, 65, 22, "metro 125", ot=["bang"])
    box("tr-cnt", "newobj", 440, 100, 100, 22, "counter 0 255", no=4, ot=["int","","","int"])
    comment("tr-sl", 555, 100, "STEP")
    box("tr-sn", "number", 590, 100, 45, 22, no=2, ot=["", "bang"])

    wire("tr-lb", 0, "tr-bpmi", 0)
    wire("tr-bpmi", 0, "tr-bpm", 0)
    wire("tr-bpm", 0, "tr-calc", 0)
    wire("tr-calc", 0, "tr-metro", 1)
    wire("tr-play", 0, "tr-metro", 0)
    wire("tr-metro", 0, "tr-cnt", 0)
    wire("tr-cnt", 0, "tr-sn", 0)

    # ═══════════════════════ SEQUENCER ═══════════════════════

    # Voice row labels (left of grid)
    for i, v in enumerate(VOICES):
        row_y = GRID_Y + i * (GRID_H // GRID_ROWS) + 2
        comment(f"rl-{i}", 10, row_y, v["name"], fontface=1, fontsize=11.0, w=55)

    # matrixctrl grid
    box("sq-grid", "matrixctrl", GRID_X, GRID_Y, GRID_W, GRID_H,
        ni=1, no=2, ot=["list", ""],
        parameter_enable=0, columns=GRID_COLS, rows=GRID_ROWS)

    # Length umenus (right of grid)
    len_x = GRID_X + GRID_W + 15
    comment("len-title", len_x, GRID_Y - 18, "LENGTH", fontface=1, w=55)
    for i, v in enumerate(VOICES):
        row_y = GRID_Y + i * (GRID_H // GRID_ROWS)
        uid = f"len-{i}"
        box(uid, "umenu", len_x, row_y, 55, 20, no=2, ot=["int", ""],
            items=["4", ",", "8", ",", "12", ",", "16", ",", "24", ",", "32"])
        # Prepend voice index for JS
        box(f"lp-{i}", "newobj", len_x + 60, row_y, 115, 22,
            f"prepend setlength_idx {i}", ot=[""])
        wire(uid, 0, f"lp-{i}", 0)
        wire(f"lp-{i}", 0, "sq-js", 0)  # will create sq-js below
        # Default to 16 steps (index 3)
        box(f"li-{i}", "message", len_x + 60, row_y + 20, 22, 18, "3", ni=2, ot=[""])
        wire("tr-lb", 0, f"li-{i}", 0)
        wire(f"li-{i}", 0, uid, 0)

    # Sequencer JS
    box("sq-js", "newobj", GRID_X, GRID_Y + GRID_H + 10, 240, 22,
        "js sequencer.js", ni=2, no=7, ot=["","","","","","",""])
    wire("tr-cnt", 0, "sq-js", 0)      # step → JS inlet 0
    wire("sq-grid", 0, "sq-js", 1)     # matrixctrl → JS inlet 1

    # Init matrixctrl with default patterns
    init_parts = []
    for i, v in enumerate(VOICES):
        for step, val in enumerate(v["pattern"]):
            if val > 0:
                init_parts.append(f"set {step} {i} 1")
    box("sq-init", "message", GRID_X + 250, GRID_Y + GRID_H + 10, 400, 22,
        ", ".join(init_parts), ni=2, ot=[""])
    wire("tr-lb", 0, "sq-init", 0)
    wire("sq-init", 0, "sq-grid", 0)

    # ═══════════════════════ VOICES (audio) ═══════════════════════
    voice_y = GRID_Y + GRID_H + 45

    for i, v in enumerate(VOICES):
        vx = 30 + i * 160
        # Click~ + gen~ + level
        box(f"vc-{i}", "newobj", vx, voice_y, 42, 22, "click~", ot=["signal"])
        box(f"vg-{i}", "newobj", vx, voice_y + 28, 150, 22, "gen~",
            ot=["signal"], patcher=gen_patcher())
        box(f"vl-{i}", "newobj", vx, voice_y + 58, 55, 22, f"*~ {v['level']}",
            ni=2, ot=["signal"])
        # Manual trigger button
        box(f"vb-{i}", "button", vx + 55, voice_y - 5, 22, 22, ot=["bang"])

        # Wiring: JS → click~ → gen~ → level
        wire("sq-js", i, f"vc-{i}", 0)
        wire(f"vb-{i}", 0, f"vc-{i}", 0)
        wire(f"vc-{i}", 0, f"vg-{i}", 0)
        wire(f"vg-{i}", 0, f"vl-{i}", 0)

    # ═══════════════════════ VOICE CTRL (tabbed param editor) ═══════════════════════
    ed_y = voice_y + 95

    # Voice select tab
    tab_names = " ".join(v["name"] for v in VOICES)
    box("vc-tab", "tab", 30, ed_y, 500, 24,
        text=tab_names, ni=1, no=3, ot=["int", "", ""],
        parameter_enable=0, tabsize=6, fontface=1)

    # Voice controller JS
    box("vc-js", "newobj", 550, ed_y, 220, 22,
        "js voicectrl.js", ni=2, no=7, ot=["","","","","","",""])
    wire("vc-tab", 0, "vc-js", 0)

    # Init voice params on load
    box("vc-initmsg", "message", 550, ed_y - 22, 35, 22, "init", ni=2, ot=[""])
    wire("tr-lb", 0, "vc-initmsg", 0)
    wire("vc-initmsg", 0, "vc-js", 0)

    # Route voicectrl outlets to gen~ instances
    for i in range(6):
        wire("vc-js", i, f"vg-{i}", 0)

    # UI update route (outlet 6 → route → set dials)
    macro_route = "route " + " ".join(MACROS) + " pitch decay_ms exciter_type body_type"
    box("vc-route", "newobj", 30, ed_y + 32, 650, 22, macro_route,
        ni=1, no=13, ot=[""] * 13)
    wire("vc-js", 6, "vc-route", 0)

    # 8 macro dials + pitch/decay/exciter/body
    dial_y = ed_y + 62
    all_params = MACROS + ["pitch", "decay_ms", "exciter_type", "body_type"]
    all_labels = MACRO_LABELS + ["PITCH", "DECAY", "EXC TYPE", "BODY TYPE"]

    for j, (pname, plabel) in enumerate(zip(all_params, all_labels)):
        dx = 30 + j * 82
        # Label
        comment(f"dl-{j}", dx, dial_y, plabel, fontsize=10.0, w=70)
        # Dial
        box(f"dd-{j}", "dial", dx + 5, dial_y + 18, 40, 40, no=1, ot=["int"],
            parameter_enable=0)
        # Set message (for UI update from voicectrl)
        box(f"ds-{j}", "message", dx + 5, dial_y + 62, 55, 22, "set $1", ni=2, ot=[""])
        wire("vc-route", j, f"ds-{j}", 0)
        wire(f"ds-{j}", 0, f"dd-{j}", 0)
        # Prepend param name (for dial → voicectrl)
        box(f"dp-{j}", "newobj", dx + 5, dial_y + 88, 80, 22,
            f"prepend {pname}", ot=[""])
        wire(f"dd-{j}", 0, f"dp-{j}", 0)
        wire(f"dp-{j}", 0, "vc-js", 1)

    # ═══════════════════════ MIDI INPUT ═══════════════════════
    midi_y = dial_y + 118

    comment("midi-lbl", 30, midi_y, "MIDI IN", fontface=1, w=60)
    box("midi-in", "newobj", 100, midi_y, 45, 22, "notein", no=3, ot=["int","int","int"])
    box("midi-strip", "newobj", 100, midi_y + 25, 60, 22, "stripnote", ni=2, no=2, ot=["int","int"])

    # Route MIDI notes to voices (C2=36, D2=38, E2=40, F2=41, G2=43, A2=45)
    note_nums = " ".join(str(v["midi_note"]) for v in VOICES)
    box("midi-sel", "newobj", 100, midi_y + 50, 160, 22, f"select {note_nums}",
        ni=1, no=7, ot=["bang"] * 6 + [""])
    wire("midi-in", 0, "midi-strip", 0)
    wire("midi-in", 1, "midi-strip", 1)
    wire("midi-strip", 0, "midi-sel", 0)
    for i in range(6):
        wire("midi-sel", i, f"vc-{i}", 0)

    comment("midi-hint", 280, midi_y + 50, "Notes: C2=Mass D2=Vein E2=Shard F2=Husk G2=Fault A2=Halo", w=400)

    # ═══════════════════════ MIXER ═══════════════════════
    mix_y = midi_y + 82

    for s in range(5):
        box(f"mx-{s}", "newobj", 30 + s * 70, mix_y, 35, 22, "+~", ni=2, ot=["signal"])

    wire("vl-0", 0, "mx-0", 0)
    wire("vl-1", 0, "mx-0", 1)
    wire("mx-0", 0, "mx-1", 0)
    wire("vl-2", 0, "mx-1", 1)
    wire("mx-1", 0, "mx-2", 0)
    wire("vl-3", 0, "mx-2", 1)
    wire("mx-2", 0, "mx-3", 0)
    wire("vl-4", 0, "mx-3", 1)
    wire("mx-3", 0, "mx-4", 0)
    wire("vl-5", 0, "mx-4", 1)

    # Master gain
    box("mx-gain", "gain~", 30, mix_y + 30, 350, 28, ni=1, no=2,
        ot=["signal", ""], parameter_enable=0, orientation=1)
    wire("mx-4", 0, "mx-gain", 0)

    # Output
    box("mx-scope", "scope~", 420, mix_y + 20, 200, 55, ni=2, no=0)
    box("mx-meter", "meter~", 30, mix_y + 64, 350, 18, ot=["float"])
    box("mx-dac", "newobj", 30, mix_y + 90, 60, 22, "dac~ 1 2", ni=2, no=0)
    wire("mx-gain", 0, "mx-dac", 0)
    wire("mx-gain", 0, "mx-dac", 1)
    wire("mx-gain", 0, "mx-scope", 0)
    wire("mx-gain", 0, "mx-meter", 0)

    # Audio toggle
    box("out-at", "toggle", 120, mix_y + 86, 25, 25, ot=["int"])
    box("out-as", "newobj", 120, mix_y + 114, 45, 22, "sel 0 1", no=3, ot=["bang","bang",""])
    box("out-ms", "message", 120, mix_y + 140, 35, 22, "stop", ni=2, ot=[""])
    box("out-mw", "message", 170, mix_y + 140, 68, 22, "startwindow", ni=2, ot=[""])
    comment("out-al", 150, mix_y + 88, "AUDIO", w=50)
    wire("out-at", 0, "out-as", 0)
    wire("out-as", 0, "out-ms", 0)
    wire("out-as", 1, "out-mw", 0)
    wire("out-ms", 0, "mx-dac", 0)
    wire("out-mw", 0, "mx-dac", 0)

    # Hints
    comment("h1", 420, mix_y + 80, "Click grid to edit patterns. Toggle PLAY to start.", w=400)
    comment("h2", 420, mix_y + 100, "Repeated hits build pressure. Silence cools down.", w=400)
    comment("h3", 420, mix_y + 120, "Select voice tab to edit macros. MIDI pads trigger voices.", w=450)

    # ═══════════════════════ ASSEMBLE ═══════════════════════
    return {
        "patcher": {
            "fileversion": 1,
            "appversion": {"major": 9, "minor": 0, "revision": 0, "architecture": "x64", "modernui": 1},
            "classnamespace": "box",
            "rect": [20, 40, 1060, 820],
            "bglocked": 0,
            "openinpresentation": 0,
            "default_fontsize": 12.0,
            "default_fontname": "Arial",
            "gridsize": [15.0, 15.0],
            "gridsnaponopen": 1,
            "objectsnaponopen": 1,
            "statusbarvisible": 2,
            "toolbarvisible": 1,
            "description": "Dream Xeno Box - 6-Voice Polymetric Alien Percussion Groovebox",
            "boxes": _boxes,
            "lines": _lines,
        }
    }

if __name__ == "__main__":
    patch = build()
    with open("DreamXenoBox.maxpat", "w") as f:
        json.dump(patch, f, indent="\t")
    nb = len(patch["patcher"]["boxes"])
    nl = len(patch["patcher"]["lines"])
    print(f"Generated DreamXenoBox.maxpat ({nb} objects, {nl} connections)")
