#!/usr/bin/env python3
"""Generate DreamXenoBox.maxpat — 6-voice polymetric sequencer groovebox.

Layout: 15px grid, top-to-bottom flow, send/receive for cross-section routing.
"""
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
History pitch_env(0);
History fb_state(0);
History fb_hp(0);
History cav_lp(0);
Delay comb_d(8820);
Delay cav_d(8820);

trig_on = (in1 > 0.5) * (prev_trig <= 0.5);
vel = in1;
prev_trig = in1;

if (trig_on) {
    pressure = min(pressure + vel * (0.3 + stress * 0.7) * (1 - pressure), 1);
    fatigue = min(fatigue + 0.02 * (1 - fatigue), 1);
    exc_env = 1;
    halo_env = vel * mist;
    main_env = vel;
    pitch_env = vel;
}

p_decay = 0.00002 + (1 - stress) * 0.00008;
pressure = pressure * (1 - p_decay);
heat_state = heat_state + (pressure - heat_state) * 0.0002;
heat_state = heat_state * (1 - 0.00005);
fatigue = fatigue * (1 - 0.000002);
stiffness = fatigue * 0.6 + pressure * 0.4;

eff_heat = clamp(heat_macro + heat_state * 0.5, 0, 1);
eff_scar = clamp(scar + pressure * stress, 0, 1);

p_env_rate = 0.002 + weight * 0.008;
pitch_env = pitch_env * (1 - p_env_rate);
p_sweep = pitch_env * weight * 24;
p_mod = pitch + p_sweep + noise() * pressure * drift_param * 2;
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

fb_gain = mist * (0.5 + stress * 0.5);
fb_gain = clamp(fb_gain, 0, 0.95);
hp_cut = 200 + (1 - weight) * 800;
hp_c = clamp(1 - exp(-twopi * hp_cut / samplerate), 0.001, 0.999);
fb_lp = fb_hp + (fb_state - fb_hp) * hp_c;
fb_hp = fb_lp;
fb_hpf = fb_state - fb_lp;
fb_ltd = tanh(fb_hpf * 2) * 0.5;
bl_rate = 0.000005 + (1 - bloom) * 0.0003;
halo_env = halo_env * (1 - bl_rate);
fb_sig = fb_ltd * fb_gain * halo_env;
body_input = exciter_out + fb_sig;

eff_decay = decay_ms * decay_ms * 1.25;
decay_norm = clamp(eff_decay / 8000, 0, 1);
eff_Q = clamp(0.98 + decay_norm * 0.015 - fatigue * 0.3, 0.8, 0.9995);

body_out = 0;
if (body_type < 0.5) {
    w1 = twopi * body_freq * 1.0 / samplerate;
    r1 = eff_Q;
    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;
    ry2_a = ry1_a; ry1_a = ya;
    w2 = twopi * body_freq * (1.347 + stiffness * 0.15) / samplerate;
    r2 = eff_Q * 0.99;
    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;
    ry2_b = ry1_b; ry1_b = yb;
    w3 = twopi * body_freq * (1.891 + stiffness * 0.2) / samplerate;
    r3 = eff_Q * 0.98;
    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;
    ry2_c = ry1_c; ry1_c = yc;
    w4 = twopi * body_freq * (2.534 + stiffness * 0.3) / samplerate;
    r4 = eff_Q * 0.97;
    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;
    ry2_d = ry1_d; ry1_d = yd;
    body_out = (ya + yb * 0.7 + yc * 0.45 + yd * 0.3) * 0.25;
} else if (body_type < 1.5) {
    d_samps = clamp(samplerate / body_freq, 2, 8000);
    fb = eff_Q * 0.9;
    delayed = comb_d.read(d_samps);
    d_coeff = 0.3 + fatigue * 0.4;
    comb_lp = comb_lp + (delayed - comb_lp) * d_coeff;
    comb_d.write(body_input + comb_lp * fb);
    body_out = delayed;
} else if (body_type < 2.5) {
    cav_len = clamp(samplerate / (body_freq * 0.5), 2, 8000);
    cav_fb = eff_Q * (0.85 + pressure * 0.1);
    cav_fb = clamp(cav_fb, 0, 0.995);
    cav_del = cav_d.read(cav_len);
    cav_cut = 0.2 + (1 - pressure) * 0.3 + eff_heat * 0.3;
    cav_lp = cav_lp + (cav_del - cav_lp) * cav_cut;
    cav_d.write(body_input + cav_lp * cav_fb);
    w1 = twopi * body_freq * 1.0 / samplerate;
    r1 = eff_Q * 0.95;
    ya = cav_del + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;
    ry2_a = ry1_a; ry1_a = ya;
    body_out = (cav_del * 0.6 + ya * 0.4);
} else {
    mem_r1 = 1.0;
    mem_r2 = 1.594;
    mem_r3 = 2.136;
    mem_r4 = 2.296;
    w1 = twopi * body_freq * mem_r1 / samplerate;
    r1 = eff_Q * 0.998;
    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;
    ry2_a = ry1_a; ry1_a = ya;
    w2 = twopi * body_freq * mem_r2 / samplerate;
    r2 = eff_Q * 0.99;
    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;
    ry2_b = ry1_b; ry1_b = yb;
    w3 = twopi * body_freq * mem_r3 / samplerate;
    r3 = eff_Q * 0.985;
    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;
    ry2_c = ry1_c; ry1_c = yc;
    w4 = twopi * body_freq * mem_r4 / samplerate;
    r4 = eff_Q * 0.98;
    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;
    ry2_d = ry1_d; ry1_d = yd;
    body_out = (ya * 0.5 + yb * 0.25 + yc * 0.15 + yd * 0.1);
}

fold_d = 1 + eff_scar * 4;
fractured = body_out;
if (eff_scar > 0.01) {
    biased = body_out + pressure * 0.3;
    folded = asin(sin(biased * fold_d * 1.5707963)) * 0.6366197;
    fractured = body_out * (1 - eff_scar) + folded * eff_scar;
}

fb_source = body_out * (1 - stress) + fractured * stress;
fb_state = fb_source;

env_rate = 1.0 / max(eff_decay * samplerate / 1000, 1);
main_env = main_env * (1 - env_rate);

out_env = max(main_env, halo_env * mist);
out1 = fractured * out_env;""".strip()

# ── Voice definitions ──
VOICES = [
    {"name": "MASS",  "idx": 0, "color": [0.9, 0.2, 0.2, 1.0], "level": 0.5,
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

NUM_SLOTS = 8  # Kit slots

MACROS = ["stress", "bloom", "scar", "weight", "mist", "heat_macro", "drift_param", "density_param"]
MACRO_LABELS = ["STRESS", "BLOOM", "SCAR", "WEIGHT", "MIST", "HEAT", "DRIFT", "DENSITY"]

# ── Layout constants (all multiples of 15) ──
COL_SPACING = 150
VOICE_COLS = [75 + i * COL_SPACING for i in range(6)]  # 75, 225, 375, 525, 675, 825

# Section Y positions
Y_TITLE     = 15
Y_TRANSPORT = 45
Y_SEQ       = 120
Y_SEQ_JS    = 285
Y_VOICES    = 330
Y_MIXER     = 510
Y_EDITOR    = 660
Y_FLAM      = 870
Y_KITS      = 1020
Y_MIDI      = 1125

# Grid dimensions
GRID_X = 75
GRID_W = 780
GRID_H = 144
GRID_COLS = 32
GRID_ROWS = 6


def gen_patcher():
    """gen~ sub-patcher with codebox voice engine."""
    return {
        "fileversion": 1,
        "appversion": {"major": 9, "minor": 0, "revision": 0,
                       "architecture": "x64", "modernui": 1},
        "rect": [0, 0, 800, 600],
        "editing_bgcolor": [0.65, 0.65, 0.65, 1.0],
        "boxes": [
            {"box": {"id": "g-in", "maxclass": "newobj", "numinlets": 1,
                     "numoutlets": 1, "outlettype": [""],
                     "patching_rect": [50, 14, 30, 22], "text": "in 1"}},
            {"box": {"id": "g-cb", "maxclass": "codebox", "numinlets": 1,
                     "numoutlets": 1, "outlettype": [""],
                     "patching_rect": [50, 50, 700, 450], "code": VOICE_CODE}},
            {"box": {"id": "g-out", "maxclass": "newobj", "numinlets": 1,
                     "numoutlets": 0,
                     "patching_rect": [50, 520, 35, 22], "text": "out 1"}}
        ],
        "lines": [
            {"patchline": {"source": ["g-in", 0], "destination": ["g-cb", 0]}},
            {"patchline": {"source": ["g-cb", 0], "destination": ["g-out", 0]}}
        ]
    }


# ── Patch builder helpers ──
_boxes = []
_lines = []


def box(bid, cls, x, y, w, h, text=None, **kw):
    """Add a box to the patch. x,y should be multiples of 15."""
    b = {"id": bid, "maxclass": cls,
         "numinlets": kw.pop("ni", 1), "numoutlets": kw.pop("no", 1),
         "patching_rect": [x, y, w, h]}
    if "ot" in kw:
        b["outlettype"] = kw.pop("ot")
    if text is not None:
        b["text"] = text
    b.update(kw)
    _boxes.append({"box": b})


def wire(src, so, dst, di):
    _lines.append({"patchline": {"source": [src, so], "destination": [dst, di]}})


def comment(bid, x, y, text, **kw):
    box(bid, "comment", x, y, kw.pop("w", len(text) * 7 + 10), 20,
        text, no=0, **kw)


def section_header(bid, x, y, text):
    """Bold section separator comment."""
    comment(bid, x, y, text, fontface=1, fontsize=14.0,
            w=len(text) * 9 + 20,
            textcolor=[0.3, 0.3, 0.3, 1.0])


# ════════════════════════════════════════════════════════════════════
# BUILD
# ════════════════════════════════════════════════════════════════════

def build():
    _boxes.clear()
    _lines.clear()

    # ═══════════════════════ TITLE ═══════════════════════
    comment("title", 30, Y_TITLE, "DREAM XENO BOX",
            w=300, fontsize=18.0, fontface=1)

    # ═══════════════════════ TRANSPORT ═══════════════════════
    section_header("sec-tr", 30, Y_TRANSPORT, "TRANSPORT")

    ty = Y_TRANSPORT + 30  # 75

    box("tr-lb", "newobj", 30, ty, 58, 22, "loadbang", ot=["bang"])
    box("tr-bpmi", "message", 105, ty, 32, 22, "120", ni=2, ot=[""])
    box("tr-bpm", "number", 150, ty, 50, 22, no=2, ot=["", "bang"],
        minimum=30, maximum=300)
    comment("tr-bl", 210, ty, "BPM", w=30)
    box("tr-calc", "newobj", 255, ty, 135, 22,
        "expr 60000. / ($f1 * 4.)", ot=[""])

    # Play toggle + metro + counter
    box("tr-play", "toggle", 435, ty - 4, 28, 28, ot=["int"])
    comment("tr-pl", 470, ty, "PLAY", fontface=1, w=40)
    box("tr-metro", "newobj", 435, ty + 30, 65, 22, "metro 125", ot=["bang"])
    box("tr-cnt", "newobj", 435, ty + 60, 110, 22, "counter 0 255",
        no=4, ot=["int", "", "", "int"])
    comment("tr-sl", 570, ty + 60, "STEP", w=40)
    box("tr-sn", "number", 615, ty + 60, 45, 22, no=2, ot=["", "bang"])

    wire("tr-lb", 0, "tr-bpmi", 0)
    wire("tr-bpmi", 0, "tr-bpm", 0)
    wire("tr-bpm", 0, "tr-calc", 0)
    wire("tr-calc", 0, "tr-metro", 1)
    wire("tr-play", 0, "tr-metro", 0)
    wire("tr-metro", 0, "tr-cnt", 0)
    wire("tr-cnt", 0, "tr-sn", 0)

    # ═══════════════════════ SEQUENCER ═══════════════════════
    section_header("sec-sq", 30, Y_SEQ - 15, "SEQUENCER")

    # Voice row labels (left of grid)
    for i, v in enumerate(VOICES):
        row_y = Y_SEQ + i * (GRID_H // GRID_ROWS) + 2
        comment(f"rl-{i}", 15, row_y, v["name"], fontface=1, fontsize=11.0, w=55)

    # matrixctrl grid
    box("sq-grid", "matrixctrl", GRID_X, Y_SEQ, GRID_W, GRID_H,
        ni=1, no=2, ot=["list", ""],
        parameter_enable=0, columns=GRID_COLS, rows=GRID_ROWS)

    # Length umenus (right of grid)
    len_x = GRID_X + GRID_W + 15  # 870
    comment("len-title", len_x, Y_SEQ - 15, "LENGTH", fontface=1, w=55)
    for i in range(6):
        row_y = Y_SEQ + i * (GRID_H // GRID_ROWS)
        uid = f"len-{i}"
        box(uid, "umenu", len_x, row_y, 55, 20, no=2, ot=["int", ""],
            items=["4", ",", "8", ",", "12", ",", "16", ",", "24", ",", "32"])
        # Prepend voice index → send to JS
        box(f"lp-{i}", "newobj", len_x + 60, row_y, 120, 22,
            f"prepend setlength_idx {i}", ot=[""])
        wire(uid, 0, f"lp-{i}", 0)
        wire(f"lp-{i}", 0, "sq-js", 0)
        # Default to 16 steps (index 3)
        box(f"li-{i}", "message", len_x + 60, row_y + 22, 22, 18,
            "3", ni=2, ot=[""])
        wire("tr-lb", 0, f"li-{i}", 0)
        wire(f"li-{i}", 0, uid, 0)

    # Sequencer JS — width so outlets 0-5 align with voice columns
    # For 7 outlets on width W: outlet[i] at x + i * W / 6
    # We want outlet[i] center at VOICE_COLS[i] = 75 + i*150
    # JS x = 75, so outlet[i] at 75 + i * W/6 = 75 + i*150 → W/6 = 150 → W = 900
    js_w = 900
    box("sq-js", "newobj", GRID_X, Y_SEQ_JS, js_w, 22,
        "js sequencer.js", ni=2, no=7, ot=["", "", "", "", "", "", ""])
    wire("tr-cnt", 0, "sq-js", 0)
    wire("sq-grid", 0, "sq-js", 1)

    # Init matrixctrl with default patterns
    init_parts = []
    for i, v in enumerate(VOICES):
        for step, val in enumerate(v["pattern"]):
            if val > 0:
                init_parts.append(f"set {step} {i} 1")
    box("sq-init", "message", GRID_X, Y_SEQ_JS + 30, 700, 22,
        ", ".join(init_parts), ni=2, ot=[""])
    wire("tr-lb", 0, "sq-init", 0)
    wire("sq-init", 0, "sq-grid", 0)

    # ═══════════════════════ VOICES (audio chain) ═══════════════════════
    section_header("sec-vc", 30, Y_VOICES - 15, "VOICES")

    for i, v in enumerate(VOICES):
        cx = VOICE_COLS[i]

        # Voice name label
        comment(f"vn-{i}", cx, Y_VOICES, v["name"], fontface=1,
                fontsize=11.0, w=60)

        # Manual trigger button (beside click~)
        box(f"vb-{i}", "button", cx + 60, Y_VOICES + 22, 22, 22, ot=["bang"])

        # click~ (trigger → impulse)
        box(f"vc-{i}", "newobj", cx, Y_VOICES + 22, 42, 22,
            "click~", ot=["signal"])

        # receive for params from voice editor (message domain)
        box(f"vr-{i}", "newobj", cx, Y_VOICES + 52, 90, 22,
            f"receive v{i}_p", ot=[""])

        # gen~ voice engine
        box(f"vg-{i}", "newobj", cx, Y_VOICES + 82, 130, 22,
            "gen~", ot=["signal"], patcher=gen_patcher())

        # *~ level
        box(f"vl-{i}", "newobj", cx, Y_VOICES + 112, 55, 22,
            f"*~ {v['level']}", ni=2, ot=["signal"])

        # send~ audio to mixer
        box(f"vs-{i}", "newobj", cx, Y_VOICES + 142, 80, 22,
            f"send~ v{i}_out", ni=1, no=0)

        # Wiring: JS outlet → click~ → gen~ → *~ → send~
        wire("sq-js", i, f"vc-{i}", 0)
        wire(f"vb-{i}", 0, f"vc-{i}", 0)
        wire(f"vc-{i}", 0, f"vg-{i}", 0)
        wire(f"vr-{i}", 0, f"vg-{i}", 0)   # params → gen~
        wire(f"vg-{i}", 0, f"vl-{i}", 0)
        wire(f"vl-{i}", 0, f"vs-{i}", 0)

    # ═══════════════════════ MIXER ═══════════════════════
    section_header("sec-mx", 30, Y_MIXER - 15, "MIXER")

    # receive~ from each voice
    for i in range(6):
        rx = 75 + i * 120
        box(f"mr-{i}", "newobj", rx, Y_MIXER, 95, 22,
            f"receive~ v{i}_out", ot=["signal"])

    # +~ cascade: (v0+v1) → +v2 → +v3 → +v4 → +v5
    add_y = Y_MIXER + 30
    for s in range(5):
        ax = 75 + s * 120
        box(f"mx-{s}", "newobj", ax, add_y, 35, 22, "+~",
            ni=2, ot=["signal"])

    # Wire receive~ into +~ cascade
    wire("mr-0", 0, "mx-0", 0)
    wire("mr-1", 0, "mx-0", 1)
    for s in range(1, 5):
        wire(f"mx-{s-1}", 0, f"mx-{s}", 0)
        wire(f"mr-{s+1}", 0, f"mx-{s}", 1)

    # Master gain (horizontal slider)
    box("mx-gain", "gain~", 75, add_y + 30, 500, 30,
        ni=1, no=2, ot=["signal", ""],
        parameter_enable=0, orientation=1)
    wire("mx-4", 0, "mx-gain", 0)

    # Meter + Scope
    box("mx-meter", "meter~", 75, add_y + 68, 500, 18, ot=["float"])
    box("mx-scope", "scope~", 600, add_y + 30, 200, 56, ni=2, no=0)
    wire("mx-gain", 0, "mx-meter", 0)
    wire("mx-gain", 0, "mx-scope", 0)

    # DAC + audio toggle
    dac_y = add_y + 95
    box("mx-dac", "newobj", 75, dac_y, 60, 22, "dac~ 1 2", ni=2, no=0)
    wire("mx-gain", 0, "mx-dac", 0)
    wire("mx-gain", 0, "mx-dac", 1)

    box("out-at", "toggle", 165, dac_y - 2, 25, 25, ot=["int"])
    comment("out-al", 195, dac_y, "AUDIO ON/OFF", fontface=1, w=90)
    box("out-as", "newobj", 165, dac_y + 30, 45, 22,
        "sel 0 1", no=3, ot=["bang", "bang", ""])
    box("out-ms", "message", 165, dac_y + 60, 35, 22,
        "stop", ni=2, ot=[""])
    box("out-mw", "message", 210, dac_y + 60, 68, 22,
        "startwindow", ni=2, ot=[""])
    wire("out-at", 0, "out-as", 0)
    wire("out-as", 0, "out-ms", 0)
    wire("out-as", 1, "out-mw", 0)
    wire("out-ms", 0, "mx-dac", 0)
    wire("out-mw", 0, "mx-dac", 0)

    # ═══════════════════════ VOICE EDITOR ═══════════════════════
    section_header("sec-ed", 30, Y_EDITOR - 15, "VOICE EDITOR")

    # Voice select tab (live.tab for reliable JSON tab labels)
    box("vc-tab", "live.tab", 75, Y_EDITOR, 750, 28, ni=1, no=3,
        ot=["", "", "float"],
        parameter_enable=1,
        num_lines_patching=1, num_lines_presentation=1,
        saved_attribute_attributes={
            "valueof": {
                "parameter_enum": ["MASS", "VEIN", "SHARD", "HUSK", "FAULT", "HALO"],
                "parameter_longname": "voice_select",
                "parameter_shortname": "voice",
                "parameter_mmax": 5.0,
                "parameter_type": 2,
                "parameter_unitstyle": 0
            }
        })

    # Voice controller JS (8 outlets: 0-5=voices, 6=UI, 7=kit notify)
    box("vc-js", "newobj", 75, Y_EDITOR + 35, 750, 22,
        "js voicectrl.js", ni=2, no=8,
        ot=["", "", "", "", "", "", "", ""])
    wire("vc-tab", 0, "vc-js", 0)

    # Init voice params on load
    box("vc-initmsg", "message", 855, Y_EDITOR, 35, 22,
        "init", ni=2, ot=[""])
    wire("tr-lb", 0, "vc-initmsg", 0)
    wire("vc-initmsg", 0, "vc-js", 0)

    # Send voicectrl outlets 0-5 to voice param receives
    for i in range(6):
        sx = VOICE_COLS[i]
        box(f"vp-{i}", "newobj", sx, Y_EDITOR + 65, 75, 22,
            f"send v{i}_p", ni=1, no=0)
        wire("vc-js", i, f"vp-{i}", 0)

    # UI update route (outlet 6 → route → set dials)
    all_params = MACROS + ["pitch", "decay_ms", "exciter_type", "body_type"]
    all_labels = MACRO_LABELS + ["PITCH", "DECAY", "EXCITER", "BODY"]
    macro_route = "route " + " ".join(all_params)
    n_params = len(all_params)

    box("vc-route", "newobj", 75, Y_EDITOR + 95, 900, 22, macro_route,
        ni=1, no=n_params + 1, ot=[""] * (n_params + 1))
    wire("vc-js", 6, "vc-route", 0)

    # 12 parameter dials (4 rows × 3 cols to keep compact, or single row)
    # Single row, 90px spacing = 12 × 90 = 1080 — fits in window
    dial_y = Y_EDITOR + 125
    dial_spacing = 90

    for j, (pname, plabel) in enumerate(zip(all_params, all_labels)):
        dx = 30 + j * dial_spacing

        # Label
        comment(f"dl-{j}", dx, dial_y, plabel, fontsize=10.0, w=80)

        # Dial
        box(f"dd-{j}", "dial", dx + 10, dial_y + 18, 40, 40,
            no=1, ot=["int"], parameter_enable=0)

        # "set $1" message (for UI update from route)
        box(f"ds-{j}", "message", dx + 10, dial_y + 62, 55, 22,
            "set $1", ni=2, ot=[""])
        wire("vc-route", j, f"ds-{j}", 0)
        wire(f"ds-{j}", 0, f"dd-{j}", 0)

        # prepend param name (dial → voicectrl inlet 1)
        box(f"dp-{j}", "newobj", dx + 10, dial_y + 90, 80, 22,
            f"prepend {pname}", ot=[""])
        wire(f"dd-{j}", 0, f"dp-{j}", 0)
        wire(f"dp-{j}", 0, "vc-js", 1)

    # ═══════════════════════ FLAM ENGINE ═══════════════════════
    section_header("sec-fl", 30, Y_FLAM - 15, "FLAM ENGINE")

    # Flam engine JS (7 outlets: 0-5=voice bangs, 6=status)
    box("fl-js", "newobj", 75, Y_FLAM, 750, 22,
        "js flamengine.js", ni=3, no=7,
        ot=["bang", "bang", "bang", "bang", "bang", "bang", ""])

    # Tap sequencer outlets → prepend trig N → flam engine inlet 0
    for i in range(6):
        fx = VOICE_COLS[i]
        box(f"fl-tp-{i}", "newobj", fx, Y_FLAM - 30, 95, 22,
            f"prepend trig {i}", ot=[""])
        wire("sq-js", i, f"fl-tp-{i}", 0)
        wire(f"fl-tp-{i}", 0, "fl-js", 0)

    # Flam engine outlets → voice click~ via send (reuse v{i}_trig)
    for i in range(6):
        fx = VOICE_COLS[i]
        box(f"fl-snd-{i}", "newobj", fx, Y_FLAM + 30, 80, 22,
            f"send v{i}_trig", ni=1, no=0)
        wire("fl-js", i, f"fl-snd-{i}", 0)

    # Transport tempo → flam engine inlet 2
    wire("tr-calc", 0, "fl-js", 2)

    # Per-voice flam controls (6 columns)
    FLAM_PARAMS = ["subdivision", "probability", "humanize", "burst"]
    FLAM_LABELS = ["SUBDIV", "PROB %", "HUMAN", "BURST"]

    flam_ctrl_y = Y_FLAM + 60

    for i in range(6):
        fx = VOICE_COLS[i]
        comment(f"fl-vl-{i}", fx, flam_ctrl_y, VOICES[i]["name"],
                fontface=1, fontsize=10.0, w=55)

        for j, (fparam, flabel) in enumerate(zip(FLAM_PARAMS, FLAM_LABELS)):
            fy = flam_ctrl_y + 18 + j * 22
            fw = 130

            if fparam == "subdivision":
                # umenu for subdivision
                box(f"fl-{fparam}-{i}", "umenu", fx, fy, 75, 20,
                    no=2, ot=["int", ""],
                    items=["OFF", ",", "1/32", ",", "1/48", ",", "1/64", ",", "1/96"])
                box(f"fl-{fparam}-p-{i}", "newobj", fx + 80, fy, fw, 22,
                    f"prepend {fparam} {i}", ot=[""])
                wire(f"fl-{fparam}-{i}", 0, f"fl-{fparam}-p-{i}", 0)
                wire(f"fl-{fparam}-p-{i}", 0, "fl-js", 1)
            elif fparam == "burst":
                # number box for burst (1-8)
                box(f"fl-{fparam}-{i}", "number", fx, fy, 40, 22,
                    no=2, ot=["int", "bang"], minimum=1, maximum=8)
                box(f"fl-{fparam}-p-{i}", "newobj", fx + 45, fy, fw, 22,
                    f"prepend {fparam} {i}", ot=[""])
                wire(f"fl-{fparam}-{i}", 0, f"fl-{fparam}-p-{i}", 0)
                wire(f"fl-{fparam}-p-{i}", 0, "fl-js", 1)
            else:
                # dial for probability (0-100) and humanize (0-127 → 0-1)
                box(f"fl-{fparam}-{i}", "dial", fx, fy, 30, 30,
                    no=1, ot=["int"], parameter_enable=0)
                box(f"fl-{fparam}-p-{i}", "newobj", fx + 35, fy + 4, fw, 22,
                    f"prepend {fparam} {i}", ot=[""])
                wire(f"fl-{fparam}-{i}", 0, f"fl-{fparam}-p-{i}", 0)
                wire(f"fl-{fparam}-p-{i}", 0, "fl-js", 1)

        # Column labels (only for first voice column)
        if i == 0:
            for j, flabel in enumerate(FLAM_LABELS):
                fy = flam_ctrl_y + 18 + j * 22
                comment(f"fl-lbl-{j}", 15, fy + 2, flabel,
                        fontsize=9.0, w=55)

    # Flam param notifications to kit manager (single prepend below controls)
    box("fl-km-notify", "newobj", 75, flam_ctrl_y + 110, 140, 22,
        "prepend flam_param", ot=[""])
    wire("fl-km-notify", 0, "km-js", 0)
    # All flam prepend outputs also go to kit manager via this
    for i in range(6):
        for fparam in FLAM_PARAMS:
            wire(f"fl-{fparam}-p-{i}", 0, "fl-km-notify", 0)

    # ═══════════════════════ KIT MANAGER ═══════════════════════
    section_header("sec-km", 30, Y_KITS - 15, "KITS")

    # Kit manager JS (5 outlets: params, patterns, lengths, status, flam)
    box("km-js", "newobj", 75, Y_KITS, 750, 22,
        "js kitmanager.js", ni=1, no=5,
        ot=["", "", "", "", ""])

    # Init kit manager on load
    box("km-init", "message", 855, Y_KITS, 70, 22,
        "init_defaults", ni=2, ot=[""])
    wire("tr-lb", 0, "km-init", 0)
    wire("km-init", 0, "km-js", 0)

    # Kit manager outlet 0 → voicectrl (restore messages)
    wire("km-js", 0, "vc-js", 0)

    # Kit manager outlet 1 → matrixctrl (pattern restore)
    wire("km-js", 1, "sq-grid", 0)

    # Kit manager outlet 2 → sequencer (length restore)
    wire("km-js", 2, "sq-js", 0)

    # Kit manager outlet 4 → flam engine (flam restore)
    wire("km-js", 4, "fl-js", 1)

    # Voicectrl outlet 7 → kit manager (param change notifications)
    wire("vc-js", 7, "km-js", 0)

    # matrixctrl → kit manager (pattern change notifications)
    box("km-pcell", "newobj", 75, Y_KITS + 30, 120, 22,
        "prepend pattern_cell", ot=[""])
    wire("sq-grid", 0, "km-pcell", 0)
    wire("km-pcell", 0, "km-js", 0)

    # Length changes → kit manager
    for i in range(6):
        box(f"km-len-{i}", "newobj", 75 + i * 120, Y_KITS + 55, 130, 22,
            f"prepend voice_length {i}", ot=[""])
        wire(f"len-{i}", 0, f"km-len-{i}", 0)
        wire(f"km-len-{i}", 0, "km-js", 0)

    # 8 kit slot buttons: SAVE row + LOAD row
    kit_x = 75
    kit_btn_w = 80
    kit_btn_spacing = 105

    comment("km-sv-lbl", kit_x, Y_KITS + 85, "SAVE:", fontface=1, w=45)
    comment("km-ld-lbl", kit_x, Y_KITS + 115, "LOAD:", fontface=1, w=45)

    for k in range(NUM_SLOTS):
        kx = kit_x + 50 + k * kit_btn_spacing

        # Save button
        box(f"km-sv-{k}", "message", kx, Y_KITS + 85, 45, 22,
            f"save {k}", ni=2, ot=[""])
        wire(f"km-sv-{k}", 0, "km-js", 0)

        # Kit name label (updated by kit manager outlet 3)
        box(f"km-nm-{k}", "comment", kx + 48, Y_KITS + 85, 50, 20,
            f"---", no=0, fontsize=10.0)

        # Load button
        box(f"km-ld-{k}", "message", kx, Y_KITS + 115, 45, 22,
            f"load {k}", ni=2, ot=[""])
        wire(f"km-ld-{k}", 0, "km-js", 0)

    # Status display (kit manager outlet 3)
    box("km-status-route", "newobj", 75, Y_KITS + 145, 200, 22,
        "route status kit_name", ni=1, no=3, ot=["", "", ""])
    wire("km-js", 3, "km-status-route", 0)

    # Status text display
    comment("km-status", 285, Y_KITS + 145, "", w=300, fontsize=11.0)

    # ═══════════════════════ MIDI INPUT ═══════════════════════
    section_header("sec-mi", 30, Y_MIDI - 15, "MIDI INPUT")

    box("midi-in", "newobj", 75, Y_MIDI, 45, 22,
        "notein", no=3, ot=["int", "int", "int"])
    box("midi-strip", "newobj", 75, Y_MIDI + 30, 60, 22,
        "stripnote", ni=2, no=2, ot=["int", "int"])
    note_nums = " ".join(str(v["midi_note"]) for v in VOICES)
    box("midi-sel", "newobj", 75, Y_MIDI + 60, 160, 22,
        f"select {note_nums}",
        ni=1, no=7, ot=["bang"] * 6 + [""])

    wire("midi-in", 0, "midi-strip", 0)
    wire("midi-in", 1, "midi-strip", 1)
    wire("midi-strip", 0, "midi-sel", 0)

    # MIDI → click~ triggers (via send objects to avoid long wires)
    for i in range(6):
        # select outlet → button click on voice
        # Use send/receive to keep it clean
        box(f"mt-{i}", "newobj", 255 + i * 120, Y_MIDI + 60, 75, 22,
            f"send v{i}_trig", ni=1, no=0)
        wire("midi-sel", i, f"mt-{i}", 0)

    # Add receive objects at each voice click~
    for i in range(6):
        cx = VOICE_COLS[i]
        box(f"vt-{i}", "newobj", cx + 60, Y_VOICES + 45, 85, 22,
            f"receive v{i}_trig", ot=["bang"])
        wire(f"vt-{i}", 0, f"vc-{i}", 0)

    comment("midi-hint", 75, Y_MIDI + 90,
            "C2=Mass  D2=Vein  E2=Shard  F2=Husk  G2=Fault  A2=Halo",
            w=420)

    # ═══════════════════════ HINTS ═══════════════════════
    hint_y = Y_MIDI + 120
    comment("h1", 75, hint_y,
            "Click grid to edit patterns. Toggle PLAY to start.", w=400)
    comment("h2", 75, hint_y + 18,
            "Repeated hits build pressure. Silence cools down.", w=400)
    comment("h3", 75, hint_y + 36,
            "Select voice tab to edit macros. MIDI pads trigger voices.",
            w=450)

    # ═══════════════════════ ASSEMBLE ═══════════════════════
    return {
        "patcher": {
            "fileversion": 1,
            "appversion": {"major": 9, "minor": 0, "revision": 0,
                           "architecture": "x64", "modernui": 1},
            "classnamespace": "box",
            "rect": [20, 40, 1160, 1380],
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
