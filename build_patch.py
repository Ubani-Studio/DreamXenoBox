#!/usr/bin/env python3
"""Generate Maud.maxpat — 6-voice polymetric sequencer groovebox.

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
Param flam_pitch_off(0);
Param flam_vel(1);
Param flam_pitch_gate(0);
Param lfo_pitch_off(0);
Param lfo_stress_off(0);
Param lfo_bloom_off(0);
Param lfo_decay_off(0);
Param lfo_mist_off(0);
Param lfo_heat_off(0);
Param lfo_drift_off(0);
Param lfo_density_off(0);

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
History fb_lfo_phase(0);
History fb_lp2(0);
History flam_p_env(0);
Delay comb_d(8820);
Delay cav_d(8820);

trig_on = (in1 > 0.5) * (prev_trig <= 0.5);
vel = in1 * flam_vel;
prev_trig = in1;

if (trig_on) {
    pressure = min(pressure + vel * (0.3 + stress * 0.7) * (1 - pressure), 1);
    fatigue = min(fatigue + 0.02 * (1 - fatigue), 1);
    exc_env = 1;
    halo_env = vel * mist;
    main_env = vel;
    pitch_env = vel;
    flam_p_env = flam_pitch_off;
}

p_decay = 0.00002 + (1 - stress) * 0.00008;
pressure = pressure * (1 - p_decay);
heat_state = heat_state + (pressure - heat_state) * 0.0002;
heat_state = heat_state * (1 - 0.00005);
fatigue = fatigue * (1 - 0.000002);
stiffness = fatigue * 0.6 + pressure * 0.4;

eff_stress = clamp(stress + lfo_stress_off, 0, 1);
eff_bloom = clamp(bloom + lfo_bloom_off, 0, 1);
eff_mist = clamp(mist + lfo_mist_off, 0, 1);
eff_heat = clamp(heat_macro + lfo_heat_off + heat_state * 0.5, 0, 1);
eff_drift = clamp(drift_param + lfo_drift_off, 0, 1);
eff_density = clamp(density_param + lfo_density_off, 0, 1);
eff_decay_ms = clamp(decay_ms + lfo_decay_off, 5, 80);
eff_scar = clamp(scar + pressure * eff_stress, 0, 1);

fp_rate = exp(-(flam_pitch_gate * 8)) * 0.15;
flam_p_env = flam_p_env * (1 - fp_rate);

p_env_rate = 0.002 + weight * 0.008;
pitch_env = pitch_env * (1 - p_env_rate);
p_sweep = pitch_env * weight * 24;
p_mod = pitch + lfo_pitch_off + flam_p_env + p_sweep + noise() * pressure * eff_drift * 2;
base_freq = mtof(clamp(p_mod, 10, 130));
w_scale = 1 - weight * 0.35;
body_freq = max(base_freq * w_scale, 25);

e_decay = 0.0005 + eff_density * 0.003;
exc_env = exc_env * (1 - e_decay);

exciter_out = 0;
if (exciter_type < 0.5) {
    fm_r = 1.41 + eff_heat * 3;
    mf = base_freq * fm_r;
    fm_idx = (12 + eff_heat * 18) * exc_env;
    exc_mod_phase = wrap(exc_mod_phase + mf / samplerate, 0, 1);
    mod_sig = sin(exc_mod_phase * twopi) * fm_idx;
    exc_car_phase = wrap(exc_car_phase + base_freq / samplerate, 0, 1);
    exciter_out = sin(exc_car_phase * twopi + mod_sig) * exc_env * 1.5;
} else {
    n = noise();
    cutoff = base_freq * (3 + eff_heat * 12);
    coeff = clamp(1 - exp(-twopi * cutoff / samplerate), 0.001, 0.999);
    noise_filt = noise_filt + (n - noise_filt) * coeff;
    exciter_out = noise_filt * 6 * exc_env;
}

fb_lfo_rate = 0.3 + (1 - eff_bloom) * 7.7;
fb_lfo_depth_raw = clamp((eff_mist - 0.3) / 0.7, 0, 1);
fb_lfo_phase = wrap(fb_lfo_phase + fb_lfo_rate / samplerate, 0, 1);
fb_lfo = sin(fb_lfo_phase * twopi);
fb_gain = eff_mist * (0.5 + eff_stress * 0.5) * (1 + fb_lfo * fb_lfo_depth_raw * 0.15);
fb_gain = clamp(fb_gain, 0, 0.95);
hp_cut_base = 80 + (1 - weight) * 2400;
hp_cut = hp_cut_base * (1 + fb_lfo * fb_lfo_depth_raw * 0.7);
hp_c = clamp(1 - exp(-twopi * hp_cut / samplerate), 0.001, 0.999);
fb_lp = fb_hp + (fb_state - fb_hp) * hp_c;
fb_hp = fb_lp;
fb_hpf = fb_state - fb_lp;
lp2_cut = 800 + eff_bloom * 10000 + fb_lfo * fb_lfo_depth_raw * 3000;
lp2_c = clamp(1 - exp(-twopi * lp2_cut / samplerate), 0.001, 0.999);
fb_lp2 = fb_lp2 + (fb_hpf - fb_lp2) * lp2_c;
fb_ltd = tanh(fb_lp2 * 2.5) * 0.6;
bl_rate = 0.000001 + (1 - eff_bloom) * 0.0003;
halo_env = halo_env * (1 - bl_rate);
fb_sig = fb_ltd * fb_gain * halo_env;
body_input = exciter_out + fb_sig;

eff_decay = eff_decay_ms * eff_decay_ms * 2.5;
decay_norm = clamp(eff_decay / 16000, 0, 1);
eff_Q = clamp(0.985 + decay_norm * 0.014 - fatigue * 0.15, 0.85, 0.9995);

body_out = 0;
if (body_type < 0.5) {
    w1 = twopi * body_freq * 1.0 / samplerate;
    r1 = eff_Q;
    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;
    ry2_a = ry1_a; ry1_a = ya;
    w2 = twopi * body_freq * (1.347 + stiffness * 0.2) / samplerate;
    r2 = eff_Q * 0.995;
    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;
    ry2_b = ry1_b; ry1_b = yb;
    w3 = twopi * body_freq * (1.891 + stiffness * 0.25) / samplerate;
    r3 = eff_Q * 0.99;
    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;
    ry2_c = ry1_c; ry1_c = yc;
    w4 = twopi * body_freq * (2.534 + stiffness * 0.35) / samplerate;
    r4 = eff_Q * 0.985;
    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;
    ry2_d = ry1_d; ry1_d = yd;
    body_out = (ya + yb * 0.8 + yc * 0.55 + yd * 0.4) * 0.35;
} else if (body_type < 1.5) {
    d_samps = clamp(samplerate / base_freq, 2, 8000);
    fb = eff_Q * 0.92;
    delayed = comb_d.read(d_samps);
    d_coeff = 0.25 + fatigue * 0.35;
    comb_lp = comb_lp + (delayed - comb_lp) * d_coeff;
    comb_d.write(body_input + comb_lp * fb);
    body_out = delayed * 1.3;
} else if (body_type < 2.5) {
    cav_len = clamp(samplerate / base_freq, 2, 8000);
    cav_fb = eff_Q * (0.88 + pressure * 0.1);
    cav_fb = clamp(cav_fb, 0, 0.996);
    cav_del = cav_d.read(cav_len);
    cav_cut = 0.15 + (1 - pressure) * 0.35 + eff_heat * 0.3;
    cav_lp = cav_lp + (cav_del - cav_lp) * cav_cut;
    cav_d.write(body_input + cav_lp * cav_fb);
    w1 = twopi * body_freq * 1.0 / samplerate;
    r1 = eff_Q * 0.97;
    ya = cav_del + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;
    ry2_a = ry1_a; ry1_a = ya;
    body_out = (cav_del * 0.35 + ya * 0.65) * 1.2;
} else {
    mem_r1 = 1.0;
    mem_r2 = 1.594;
    mem_r3 = 2.136;
    mem_r4 = 2.296;
    w1 = twopi * body_freq * mem_r1 / samplerate;
    r1 = eff_Q * 0.999;
    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;
    ry2_a = ry1_a; ry1_a = ya;
    w2 = twopi * body_freq * mem_r2 / samplerate;
    r2 = eff_Q * 0.995;
    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;
    ry2_b = ry1_b; ry1_b = yb;
    w3 = twopi * body_freq * mem_r3 / samplerate;
    r3 = eff_Q * 0.99;
    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;
    ry2_c = ry1_c; ry1_c = yc;
    w4 = twopi * body_freq * mem_r4 / samplerate;
    r4 = eff_Q * 0.985;
    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;
    ry2_d = ry1_d; ry1_d = yd;
    body_out = (ya * 0.55 + yb * 0.3 + yc * 0.2 + yd * 0.15) * 1.1;
}

fold_d = 1 + eff_scar * 4;
fractured = body_out;
if (eff_scar > 0.01) {
    biased = body_out + pressure * 0.3;
    folded = asin(sin(biased * fold_d * 1.5707963)) * 0.6366197;
    fractured = body_out * (1 - eff_scar) + folded * eff_scar;
}

fb_source = body_out * (1 - eff_stress) + fractured * eff_stress;
fb_state = fb_source;

env_rate = 1.0 / max(eff_decay * samplerate / 1000, 1);
main_env = main_env * (1 - env_rate);

bl_env = halo_env * eff_mist;
out_env = max(main_env, bl_env);
raw_out = fractured * out_env * 3;
out1 = tanh(raw_out) * 0.95;""".strip()

# ── Voice definitions ──
VOICES = [
    {"name": "MASS",  "idx": 0, "color": [0.9, 0.2, 0.2, 1.0], "level": 0.85,
     "midi_note": 36, "pattern": [1,0,0,0, 1,0,0,0, 1,0,0,0, 1,0,0,0]},
    {"name": "VEIN",  "idx": 1, "color": [0.8, 0.5, 0.1, 1.0], "level": 0.7,
     "midi_note": 38, "pattern": [0,0,1,0, 0,0,1,0, 0,0,1,0, 0,0,1,0]},
    {"name": "SHARD", "idx": 2, "color": [0.2, 0.7, 0.9, 1.0], "level": 0.6,
     "midi_note": 40, "pattern": [1,0,1,1, 0,0,1,0, 1,0,1,1, 0,0,1,0]},
    {"name": "HUSK",  "idx": 3, "color": [0.6, 0.5, 0.3, 1.0], "level": 0.65,
     "midi_note": 41, "pattern": [0,0,0,0, 1,0,0,0, 0,0,0,0, 1,0,0,0]},
    {"name": "FAULT", "idx": 4, "color": [0.5, 0.1, 0.6, 1.0], "level": 0.75,
     "midi_note": 43, "pattern": [1,0,0,0, 0,0,0,0, 1,0,0,0, 0,0,0,0]},
    {"name": "HALO",  "idx": 5, "color": [0.3, 0.8, 0.5, 1.0], "level": 0.55,
     "midi_note": 45, "pattern": [0,0,0,1, 0,0,0,0, 0,0,0,1, 0,0,0,0]},
]

NUM_SLOTS = 8  # Kit slots

MACROS = ["stress", "bloom", "scar", "weight", "mist", "heat_macro", "drift_param", "density_param"]
MACRO_LABELS = ["STRESS", "BLOOM", "SCAR", "WEIGHT", "MIST", "HEAT", "DRIFT", "DENSITY"]

# ── Layout constants (all multiples of 15) ──
COL_SPACING = 150
VOICE_COLS = [75 + i * COL_SPACING for i in range(6)]  # 75, 225, 375, 525, 675, 825

# Section Y positions (each section gets 25px gap to next)
Y_TITLE     = 15
Y_TRANSPORT = 55
Y_SEQ       = 300
Y_SEQ_JS    = 470
Y_VOICES    = 560
Y_MIXER     = 780
Y_EDITOR    = 1160
Y_FLAM      = 1445
Y_GROOVE    = 1830
Y_LFO       = 2010
Y_KITS      = 2420
Y_MIDI      = 2670

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
    comment("title", 30, Y_TITLE, "MAUD",
            w=300, fontsize=18.0, fontface=1)

    # ═══════════════════════ TRANSPORT (audio-rate clock) ═══════════════════════
    section_header("sec-tr", 30, Y_TRANSPORT, "TRANSPORT")

    ty = Y_TRANSPORT + 30  # 75

    # ── Loadbang + Overdrive ──
    box("tr-lb", "newobj", 30, ty, 58, 22, "loadbang", ot=["bang"])
    box("tr-od", "message", 30, ty + 30, 340, 22,
        ";max overdrive 1 \\; max sched_overdrive 1", ni=2, ot=[""])
    wire("tr-lb", 0, "tr-od", 0)

    # ── BPM control ──
    box("tr-bpmi", "message", 105, ty, 32, 22, "120", ni=2, ot=[""])
    box("tr-bpm", "number", 150, ty, 50, 22, no=2, ot=["", "bang"],
        minimum=30, maximum=300)
    comment("tr-bl", 210, ty, "BPM", w=30)
    wire("tr-lb", 0, "tr-bpmi", 0)
    wire("tr-bpmi", 0, "tr-bpm", 0)

    # ── Division selector (triplets + double-time) ──
    # 0=1/16(4ppb) 1=1/8(2ppb) 2=1/8T(3ppb) 3=1/16T(6ppb) 4=1/32(8ppb)
    box("tr-div", "umenu", 255, ty, 55, 20, no=2, ot=["int", ""],
        items=["1/16", ",", "1/8", ",", "1/8T", ",", "1/16T", ",", "1/32"])
    comment("tr-div-l", 315, ty, "DIV", w=30)
    # Ratio lookup: coll stores float multipliers
    box("tr-div-coll", "newobj", 255, ty + 60, 65, 22,
        "coll", no=2, ot=["", ""])
    box("tr-div-load", "message", 255, ty + 30, 280, 22,
        "store 0 1., store 1 0.5, store 2 0.75, store 3 1.5, store 4 2.",
        ni=2, ot=[""])
    box("tr-div-init", "message", 540, ty + 30, 18, 22, "0", ni=2, ot=[""])
    wire("tr-lb", 0, "tr-div-load", 0)
    wire("tr-div-load", 0, "tr-div-coll", 0)
    wire("tr-lb", 0, "tr-div-init", 0)
    wire("tr-div-init", 0, "tr-div", 0)
    wire("tr-div", 0, "tr-div-coll", 0)
    # Ordering trigger: when division changes, update ms then retrigger BPM
    box("tr-div-t", "newobj", 255, ty + 90, 35, 22,
        "t b f", ni=1, no=2, ot=["bang", "float"])
    wire("tr-div-coll", 0, "tr-div-t", 0)
    wire("tr-div-t", 0, "tr-bpm", 0)  # bang BPM to retrigger (fires second)

    # ── Audio clock chain ──
    # BPM/60*4 = base Hz (1/16th notes), then * ratio for division
    box("tr-hz", "newobj", 450, ty + 30, 120, 22,
        "expr $f1 / 60. * 4.", ot=["float"])
    wire("tr-bpm", 0, "tr-hz", 0)
    box("tr-sig", "newobj", 450, ty + 60, 35, 22, "sig~", ot=["signal"])
    wire("tr-hz", 0, "tr-sig", 0)
    # Ratio signal
    box("tr-rsig", "newobj", 510, ty + 60, 35, 22, "sig~", ot=["signal"])
    box("tr-rsig-def", "newobj", 510, ty + 30, 75, 22,
        "loadmess 1.", ot=["float"])
    wire("tr-rsig-def", 0, "tr-rsig", 0)
    wire("tr-div-coll", 0, "tr-rsig", 0)
    # Hz * ratio → phasor~
    box("tr-mult", "newobj", 450, ty + 90, 35, 22, "*~",
        ni=2, ot=["signal"])
    wire("tr-sig", 0, "tr-mult", 0)
    wire("tr-rsig", 0, "tr-mult", 1)
    box("tr-phasor", "newobj", 450, ty + 120, 55, 22,
        "phasor~", ot=["signal"])
    wire("tr-mult", 0, "tr-phasor", 0)
    # Detect ramp wrap: delta → threshold → edge
    box("tr-delta", "newobj", 530, ty + 120, 45, 22,
        "delta~", ot=["signal"])
    wire("tr-phasor", 0, "tr-delta", 0)
    box("tr-lt", "newobj", 590, ty + 120, 35, 22, "<~ 0",
        ni=2, ot=["signal"])
    wire("tr-delta", 0, "tr-lt", 0)
    box("tr-edge", "newobj", 640, ty + 120, 45, 22, "edge~",
        no=2, ot=["bang", "bang"])
    wire("tr-lt", 0, "tr-edge", 0)

    # ── Play toggle + gate + counter ──
    box("tr-play", "toggle", 730, ty - 4, 28, 28, ot=["int"])
    comment("tr-pl", 765, ty, "PLAY", fontface=1, w=40)
    box("tr-gate", "newobj", 730, ty + 120, 50, 22, "gate",
        ni=2, ot=[""])
    wire("tr-edge", 0, "tr-gate", 1)
    wire("tr-play", 0, "tr-gate", 0)
    # Wrap on a multiple of lcm(4,8,12,16,24,32) = 96. The old 0..255 wrapped
    # after 256, and 256 % 12 = 4 and 256 % 24 = 16, so every 12- and 24-step
    # pattern jumped mid-phrase on each rollover. 288 is the smallest safe
    # value at or above the original range.
    box("tr-cnt", "newobj", 800, ty + 120, 110, 22, "counter 0 287",
        no=4, ot=["int", "", "", "int"])
    wire("tr-gate", 0, "tr-cnt", 0)
    # ── Audio vector control, read AND set ──────────────────────────
    # Earlier an adstatus display was removed because it reported 9, which is
    # not a vector size, so it was emitting a menu index. This keeps adstatus but
    # prints what it actually says, so the value is observed rather than assumed,
    # and offers both a raw value and an index to set with. Signal vector can
    # never exceed IO vector, and with an ASIO device the IO buffer is set in the
    # interface control panel, not in Max, which is the usual reason the menu
    # appears stuck.
    avx, avy = 75, ty + 250
    box("av-sig", "newobj", avx, avy, 110, 22, "adstatus sigvs", ot=[""])
    box("av-sigp", "newobj", avx + 120, avy, 130, 22, "print SIGVS", no=0)
    wire("av-sig", 0, "av-sigp", 0)
    box("av-io", "newobj", avx, avy + 26, 110, 22, "adstatus iovs", ot=[""])
    box("av-iop", "newobj", avx + 120, avy + 26, 130, 22, "print IOVS", no=0)
    wire("av-io", 0, "av-iop", 0)
    box("av-poll", "message", avx + 260, avy, 50, 22, "bang")
    wire("av-poll", 0, "av-sig", 0)
    wire("av-poll", 0, "av-io", 0)
    box("av-pdel", "newobj", avx + 320, avy, 90, 22, "delay 2000")
    wire("tr-lb", 0, "av-pdel", 0)
    wire("av-pdel", 0, "av-poll", 0)
    # adstatus sets by INDEX, not by value. Proven by its own output: it emits
    # "append 8, append 16, append 32, append 64, ..." to build a menu, then
    # "set <index>" for the current choice. So 64 is index 3.
    #
    # It reported "set 9" on open, which on a list doubling from 8 is near the
    # top of the range. That is tens of ms per vector, and edge~ reports at
    # vector boundaries, so every trigger was being rounded onto that grid
    # against a 125 ms step. This sets it at load, behind a delay so the audio
    # driver is up first, then polls and prints so the result is observed rather
    # than assumed.
    comment("av-l", avx, avy - 16,
            "VECTORS  bang to print the live lists. adstatus sets by INDEX and "
            "the index moves when the driver buffer changes, so nothing is set "
            "from here.", w=460)

    # Signal vector size is NOT set from here. adstatus reported a menu index
    # rather than the value, so it was removed; set it in Options > Audio Status.
    # It matters: edge~ reports at the start of the signal vector containing the
    # transition, so at 512 samples every trigger is rounded onto a 10.7 ms grid
    # while a 1/16 step at 120bpm is 125 ms. That is heard as glitching. 64
    # samples is 1.33 ms and inaudible.

    # ── Step interval readout ────────────────────────────────────────
    # Measures the gap between successive step bangs, in ms, inside the patch.
    # No recording, no ASIO problem, no clicking. t b b fires its RIGHT outlet
    # first, so the timer is stopped and reports before it is restarted.
    # At 120bpm 1/16 this should read 125.0 and barely move. Watch WORST: that
    # is the number that says whether the clock is holding.
    box("tr-tt", "newobj", 530, 95, 45, 22, "t b b",
        no=2, ot=["bang", "bang"])
    wire("tr-cnt", 0, "tr-tt", 0)
    box("tr-timer", "newobj", 585, 95, 55, 22, "timer",
        ni=2, no=1, ot=[""])
    wire("tr-tt", 1, "tr-timer", 1)
    wire("tr-tt", 0, "tr-timer", 0)
    box("tr-tnow", "flonum", 650, 95, 60, 22, no=2, ot=["", "bang"])
    wire("tr-timer", 0, "tr-tnow", 0)
    comment("tr-tnow-l", 715, 95, "STEP ms", w=60)
    box("tr-tpeak", "newobj", 585, 118, 55, 22, "peak", ni=2, no=1,
        ot=[""])
    wire("tr-timer", 0, "tr-tpeak", 0)
    box("tr-tworst", "flonum", 650, 118, 60, 22, no=2, ot=["", "bang"])
    wire("tr-tpeak", 0, "tr-tworst", 0)
    comment("tr-tworst-l", 715, 118, "WORST ms", w=70)
    # Running minimum as well, so the RANGE is visible. One number cannot show
    # jitter; 118 to 133 says everything that "125, fluctuating" does not.
    box("tr-ttrough", "newobj", 790, 95, 60, 22, "trough", ni=2, no=1, ot=[""])
    wire("tr-timer", 0, "tr-ttrough", 0)
    box("tr-tbest", "flonum", 855, 95, 60, 22, no=2, ot=["", "bang"])
    wire("tr-ttrough", 0, "tr-tbest", 0)
    comment("tr-tbest-l", 920, 95, "BEST ms", w=60)

    # Reset both whenever PLAY is switched on. Without this, peak holds the gap
    # between patch load and the first step, which is minutes, and the readout
    # is useless from then on. That is exactly what it did.
    box("tr-trst", "newobj", 790, 141, 45, 22, "t b b", no=2,
        ot=["bang", "bang"])
    wire("tr-play", 0, "tr-trst", 0)
    box("tr-rst-hi", "message", 845, 141, 45, 22, "99999")
    wire("tr-trst", 1, "tr-rst-hi", 0)
    wire("tr-rst-hi", 0, "tr-ttrough", 1)
    box("tr-rst-lo", "message", 895, 141, 30, 22, "0")
    wire("tr-trst", 0, "tr-rst-lo", 0)
    wire("tr-rst-lo", 0, "tr-tpeak", 1)
    comment("tr-rst-l", 935, 141, "auto-reset on play", w=120)

    comment("tr-sl", 920, ty + 120, "STEP", w=40)
    box("tr-sn", "number", 965, ty + 120, 45, 22, no=2, ot=["", "bang"])
    wire("tr-cnt", 0, "tr-sn", 0)

    # ── Step duration ms (for flam engine) ──
    box("tr-ms", "newobj", 600, ty + 90, 155, 22,
        "expr 60000. / ($f1 * 4. * $f2)", ni=2, ot=["float"])
    wire("tr-bpm", 0, "tr-ms", 0)
    wire("tr-div-t", 1, "tr-ms", 1)  # ratio → inlet 1 (fires first)
    box("tr-ms-def", "newobj", 770, ty + 90, 75, 22,
        "loadmess 1.", ot=["float"])
    wire("tr-ms-def", 0, "tr-ms", 1)

    # ═══════════════════════ SEQUENCER ═══════════════════════
    section_header("sec-sq", 30, Y_SEQ - 15, "SEQUENCER")

    # Voice row labels (left of grid)
    for i, v in enumerate(VOICES):
        row_y = Y_SEQ + i * (GRID_H // GRID_ROWS) + 2
        comment(f"rl-{i}", 15, row_y, v["name"], fontface=1, fontsize=11.0, w=55)

    # Step position indicator (multislider above grid)
    box("sq-ind", "multislider", GRID_X, Y_SEQ - 18, GRID_W, 15,
        ni=1, no=1, ot=["list"],
        setstyle=0, size=GRID_COLS, setminmax=[0.0, 1.0],
        slidercolor=[0.3, 0.8, 0.5, 1.0],
        candicane2=[0.15, 0.15, 0.15, 1.0],
        parameter_enable=0)

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
        "js sequencer.js", ni=2, no=8, ot=["", "", "", "", "", "", "", ""])
    wire("tr-cnt", 0, "sq-js", 0)
    wire("sq-grid", 0, "sq-js", 1)
    # Direct, NOT deferred. A qlim here was tried and reverted: it put the
    # highlight in the low-priority queue, so the display visibly lagged the
    # audio and the position could no longer be trusted to read the pattern by.
    # A 32-cell multislider at 8 steps a second is cheap; the cost that was
    # actually feared is the list being BUILT inside the trigger call, and
    # sequencer.js already pre-allocates that array. Measure before deferring.
    wire("sq-js", 7, "sq-ind", 0)

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

        # *~ level (controllable)
        box(f"vl-{i}", "newobj", cx, Y_VOICES + 112, 40, 22,
            "*~ 1.", ni=2, ot=["signal"])

        # Level control: flonum + receive for kit restore
        box(f"vlf-{i}", "flonum", cx + 45, Y_VOICES + 112, 45, 22,
            no=2, ot=["float", "bang"],
            minimum=0.0, maximum=2.0, numdecimalplaces=2)
        box(f"vlr-{i}", "newobj", cx + 95, Y_VOICES + 112, 85, 22,
            f"receive v{i}_level", ot=[""])
        box(f"vls-{i}", "message", cx + 95, Y_VOICES + 135, 50, 22,
            "set $1", ni=2, ot=[""])

        # Default level on load
        box(f"vld-{i}", "message", cx + 45, Y_VOICES + 135, 40, 22,
            str(v["level"]), ni=2, ot=[""])
        wire("tr-lb", 0, f"vld-{i}", 0)
        wire(f"vld-{i}", 0, f"vlf-{i}", 0)

        # Kit restore → set flonum
        wire(f"vlr-{i}", 0, f"vls-{i}", 0)
        wire(f"vls-{i}", 0, f"vlf-{i}", 0)

        # Flonum → *~ right inlet
        wire(f"vlf-{i}", 0, f"vl-{i}", 1)

        # send~ audio to mixer
        box(f"vs-{i}", "newobj", cx, Y_VOICES + 160, 80, 22,
            f"send~ v{i}_out", ni=1, no=0)

        # Wiring: flam engine → send v{i}_trig → receive → click~ → gen~ → *~ → send~
        # (direct sequencer→click~ wire removed — all triggers go through flam engine)
        wire(f"vb-{i}", 0, f"vc-{i}", 0)
        wire(f"vc-{i}", 0, f"vg-{i}", 0)
        wire(f"vr-{i}", 0, f"vg-{i}", 0)   # params → gen~
        wire(f"vg-{i}", 0, f"vl-{i}", 0)
        wire(f"vl-{i}", 0, f"vs-{i}", 0)

        # Level → kit manager notification
        box(f"vlk-{i}", "newobj", cx + 45, Y_VOICES + 160, 120, 22,
            f"prepend voice_level {i}", ot=[""])
        wire(f"vlf-{i}", 0, f"vlk-{i}", 0)
        wire(f"vlk-{i}", 0, "km-js", 0)


    # ═══════════════ NATIVE SEQUENCER (scheduler priority) ═══════════════
    # Why this exists: js runs in Max's LOW-PRIORITY queue, so every step
    # decision was scheduled behind UI redraws and garbage collection. The clock
    # was already audio-rate; the decision was not. These objects run in the
    # scheduler, which with overdrive on is high priority.
    #
    # The JS path stays wired. sq-sel chooses which one drives the voices, so
    # both can be heard on the same pattern and the readout compared. 1 = js,
    # 2 = native.
    ny = Y_SEQ_JS + 40
    comment("nq-l", GRID_X, ny - 16,
            "NATIVE SEQUENCER   toggle: off = js, on = native", fontface=1, w=330)
    box("nq-sw", "toggle", GRID_X + 340, ny - 18, 20, 20, ot=["int"])
    box("nq-swp", "newobj", GRID_X + 365, ny - 18, 40, 22, "+ 1")
    wire("nq-sw", 0, "nq-swp", 0)

    # Length lookup: the umenu emits an index, the modulo needs the step count.
    # One coll per voice keeps the routing trivial; they share one loadbang.
    box("nq-lenload", "message", GRID_X + 420, ny - 18, 300, 22,
        "store 0 4, store 1 8, store 2 12, store 3 16, store 4 24, store 5 32")
    wire("tr-lb", 0, "nq-lenload", 0)

    # Pattern storage, one table of 32 per voice. A table takes a two-element
    # list <index> <value> to write and an int to read, both at scheduler
    # priority and both documented.
    for i in range(6):
        vx = VOICE_COLS[i]
        box(f"nq-tab-{i}", "newobj", vx, ny + 84, 110, 22,
            f"table maud_v{i} 32", ni=2, no=2, ot=["int", "bang"])
        box(f"nq-coll-{i}", "newobj", vx, ny, 95, 22, f"coll maud_len{i}",
            ni=2, no=4, ot=["", "", "", ""])
        wire("nq-lenload", 0, f"nq-coll-{i}", 0)
        wire(f"len-{i}", 0, f"nq-coll-{i}", 0)
        # step % length, length arriving in the cold right inlet
        box(f"nq-mod-{i}", "newobj", vx, ny + 28, 150, 22,
            "expr $i1 % max($i2\\, 1)", ni=2, ot=[""])
        # The coll is filled by the same loadbang that drives the length menus,
        # and loadbang fan-out order is not guaranteed, so the menu fired into an
        # empty coll and the right inlet stayed 0. loadmess is independent of
        # that ordering and seeds a real default.
        box(f"nq-len0-{i}", "newobj", vx + 155, ny + 28, 85, 22, "loadmess 16")
        wire(f"nq-len0-{i}", 0, f"nq-mod-{i}", 1)
        wire(f"nq-coll-{i}", 0, f"nq-mod-{i}", 1)
        wire("tr-cnt", 0, f"nq-mod-{i}", 0)
        wire(f"nq-mod-{i}", 0, f"nq-tab-{i}", 0)
        box(f"nq-sel-{i}", "newobj", vx, ny + 112, 45, 22, "sel 1",
            no=2, ot=["bang", ""])
        wire(f"nq-tab-{i}", 0, f"nq-sel-{i}", 0)
        # switch 2: inlet 1 = js, inlet 2 = native. Selector picks the source.
        box(f"nq-sw-{i}", "newobj", vx, ny + 140, 60, 22, "switch 2",
            ni=3, ot=[""])
        wire("nq-swp", 0, f"nq-sw-{i}", 0)
        box(f"nq-sw0-{i}", "newobj", vx + 65, ny + 140, 80, 22, "loadmess 1")
        wire(f"nq-sw0-{i}", 0, f"nq-sw-{i}", 0)
        wire("sq-js", i, f"nq-sw-{i}", 1)
        wire(f"nq-sel-{i}", 0, f"nq-sw-{i}", 2)
        wire(f"nq-sw-{i}", 0, f"fl-tp-{i}", 0)

    # Grid writes. unpack emits RIGHT to LEFT, so value lands in pack's cold
    # inlet, then row sets the gate, then column fires the pair. That ordering
    # is why no trigger object is needed here.
    box("nq-unp", "newobj", GRID_X, ny + 168, 110, 22, "unpack 0 0 0",
        no=3, ot=["int", "int", "int"])
    wire("sq-grid", 0, "nq-unp", 0)
    box("nq-pk", "newobj", GRID_X, ny + 196, 70, 22, "pack 0 0", ni=2, ot=[""])
    wire("nq-unp", 0, "nq-pk", 0)
    wire("nq-unp", 2, "nq-pk", 1)
    box("nq-row", "newobj", GRID_X + 130, ny + 168, 40, 22, "+ 1")
    wire("nq-unp", 1, "nq-row", 0)
    box("nq-gate", "newobj", GRID_X, ny + 224, 200, 22, "gate 6",
        ni=2, no=6, ot=["", "", "", "", "", ""])
    wire("nq-row", 0, "nq-gate", 0)
    wire("nq-pk", 0, "nq-gate", 1)
    for i in range(6):
        wire("nq-gate", i, f"nq-tab-{i}", 0)

    # ═══════════════════════ MIXER (STEREO) ═══════════════════════
    section_header("sec-mx", 30, Y_MIXER - 15, "MIXER")

    # Per-voice: receive~ → pan (base + LFO offset) → pan split (L/R *~) via equal-power pan law
    for i in range(6):
        rx = 75 + i * 120
        # Mono receive from voice
        box(f"mr-{i}", "newobj", rx, Y_MIXER, 95, 22,
            f"receive~ v{i}_out", ot=["signal"])
        # Pan receive (message domain, from voicectrl via messnamed)
        box(f"mp-rcv-{i}", "newobj", rx, Y_MIXER + 22, 85, 22,
            f"receive v{i}_pan", ot=[""])
        # LFO pan offset receive
        box(f"mp-lfo-{i}", "newobj", rx, Y_MIXER + 44, 95, 22,
            f"receive v{i}_pan_lfo", ot=[""])
        # Sum base pan + LFO offset
        box(f"mp-sum-{i}", "newobj", rx, Y_MIXER + 66, 55, 22,
            "+ 0.", ni=2, ot=["float"])
        wire(f"mp-rcv-{i}", 0, f"mp-sum-{i}", 0)
        wire(f"mp-lfo-{i}", 0, f"mp-sum-{i}", 1)
        # Clip to 0-1
        box(f"mp-clip-{i}", "newobj", rx, Y_MIXER + 88, 75, 22,
            "clip 0. 1.", ot=["float"])
        wire(f"mp-sum-{i}", 0, f"mp-clip-{i}", 0)
        # Equal-power pan: L = sqrt(1 - pan), R = sqrt(pan)
        box(f"mp-cos-{i}", "newobj", rx, Y_MIXER + 110, 95, 22,
            "expr sqrt(1. - $f1)", ot=["float"])
        box(f"mp-sin-{i}", "newobj", rx, Y_MIXER + 132, 75, 22,
            "expr sqrt($f1)", ot=["float"])
        wire(f"mp-clip-{i}", 0, f"mp-cos-{i}", 0)
        wire(f"mp-clip-{i}", 0, f"mp-sin-{i}", 0)
        # L channel *~ (audio × pan_L gain)
        box(f"mp-l-{i}", "newobj", rx, Y_MIXER + 154, 40, 22,
            "*~ 0.7", ni=2, ot=["signal"])
        wire(f"mr-{i}", 0, f"mp-l-{i}", 0)
        wire(f"mp-cos-{i}", 0, f"mp-l-{i}", 1)
        # R channel *~ (audio × pan_R gain)
        box(f"mp-r-{i}", "newobj", rx + 50, Y_MIXER + 154, 40, 22,
            "*~ 0.7", ni=2, ot=["signal"])
        wire(f"mr-{i}", 0, f"mp-r-{i}", 0)
        wire(f"mp-sin-{i}", 0, f"mp-r-{i}", 1)

    # L bus +~ cascade
    add_y = Y_MIXER + 181
    for s in range(5):
        ax = 75 + s * 120
        box(f"mx-l-{s}", "newobj", ax, add_y, 35, 22, "+~",
            ni=2, ot=["signal"])
    wire("mp-l-0", 0, "mx-l-0", 0)
    wire("mp-l-1", 0, "mx-l-0", 1)
    for s in range(1, 5):
        wire(f"mx-l-{s-1}", 0, f"mx-l-{s}", 0)
        wire(f"mp-l-{s+1}", 0, f"mx-l-{s}", 1)

    # R bus +~ cascade
    for s in range(5):
        ax = 75 + s * 120
        box(f"mx-r-{s}", "newobj", ax + 50, add_y, 35, 22, "+~",
            ni=2, ot=["signal"])
    wire("mp-r-0", 0, "mx-r-0", 0)
    wire("mp-r-1", 0, "mx-r-0", 1)
    for s in range(1, 5):
        wire(f"mx-r-{s-1}", 0, f"mx-r-{s}", 0)
        wire(f"mp-r-{s+1}", 0, f"mx-r-{s}", 1)

    # Master gain: sig~ 1. → gain~ → outputs gain level as signal
    # Then multiply L and R buses by the gain level
    box("mx-sig1", "newobj", 75, add_y + 30, 50, 22,
        "sig~ 1.", ot=["signal"])
    box("mx-gain", "gain~", 130, add_y + 30, 400, 30,
        ni=1, no=2, ot=["signal", ""],
        parameter_enable=0, orientation=1)
    wire("mx-sig1", 0, "mx-gain", 0)
    # gain~ is 0..157 with unity at 100. Set it at load so the master starts in
    # a known place every time rather than wherever it was left.
    box("mx-gain-init", "message", 130, add_y + 4, 40, 22, "100")
    wire("tr-lb", 0, "mx-gain-init", 0)
    wire("mx-gain-init", 0, "mx-gain", 0)

    # L master multiply
    box("mx-mulL", "newobj", 75, add_y + 66, 40, 22,
        "*~", ni=2, ot=["signal"])
    wire("mx-l-4", 0, "mx-mulL", 0)
    wire("mx-gain", 0, "mx-mulL", 1)

    # R master multiply
    box("mx-mulR", "newobj", 550, add_y + 66, 40, 22,
        "*~", ni=2, ot=["signal"])
    wire("mx-r-4", 0, "mx-mulR", 0)
    wire("mx-gain", 0, "mx-mulR", 1)

    # Master limiter (soft clip before DAC)
    lim_y = add_y + 93
    box("mx-limL", "newobj", 75, lim_y, 70, 22, "clip~ -0.891 0.891",
        ni=1, ot=["signal"])
    box("mx-limR", "newobj", 550, lim_y, 70, 22, "clip~ -0.891 0.891",
        ni=1, ot=["signal"])
    wire("mx-mulL", 0, "mx-limL", 0)
    wire("mx-mulR", 0, "mx-limR", 0)

    # Meter (L channel) + Scope (after limiter)
    box("mx-meter", "meter~", 75, lim_y + 28, 500, 18, ot=["float"])
    box("mx-scope", "scope~", 600, add_y + 30, 200, 56, ni=2, no=0)
    wire("mx-limL", 0, "mx-meter", 0)
    wire("mx-limL", 0, "mx-scope", 0)
    wire("mx-limR", 0, "mx-scope", 1)

    # DAC (stereo) — below meter
    dac_y = lim_y + 52
    box("mx-dac", "newobj", 75, dac_y, 60, 22, "dac~ 1 2", ni=2, no=0)
    wire("mx-limL", 0, "mx-dac", 0)
    wire("mx-limR", 0, "mx-dac", 1)

    # ── Measurement tap ──────────────────────────────────────────────
    # A recorder on the master, permanently wired, so timing can be MEASURED
    # rather than argued about. Desktop loopback cannot capture this rig at all:
    # output goes to a Behringer UMC 404HD over ASIO, and WASAPI loopback never
    # sees ASIO. Recording here is better anyway, because it captures what the
    # engine produced with no driver in the path.
    #
    # Click the message to write 20 seconds to the repo root, then:
    #   python3 tools/jitter.py --file measure.wav --bpm 120 --div 16
    rec_x = 640
    box("mx-rec", "newobj", rec_x, dac_y, 210, 22,
        "sfrecord~ 2", ni=2, no=0)
    wire("mx-limL", 0, "mx-rec", 0)
    wire("mx-limR", 0, "mx-rec", 1)
    comment("mx-reclbl", rec_x, dac_y - 16,
            "MEASURE  records 20s to measure.wav", fontface=1, w=230)
    # An explicit chain, not a comma message. sfrecord~ needs open, then start,
    # then a stop later; putting all three in one message box sends them in the
    # same tick and writes an empty file. t b b fires right outlet first, so the
    # file is open before recording starts.
    box("mx-recbtn", "button", rec_x, dac_y + 30, 24, 24)
    box("mx-rect", "newobj", rec_x + 30, dac_y + 30, 45, 22, "t b b",
        no=2, ot=["bang", "bang"])
    wire("mx-recbtn", 0, "mx-rect", 0)
    # An ABSOLUTE Windows path, not a bare filename. A relative name resolves
    # against Max's own default directory, and this patch lives on a
    # \\wsl.localhost UNC share which Max will not write to; the first attempt
    # produced no file and no error anywhere, which is exactly that failure.
    # E: is a plain local drive and is readable from WSL at /mnt/e.
    box("mx-recopen", "message", rec_x + 150, dac_y + 60, 220, 22,
        "open E:/tmp/measure.wav")
    wire("mx-rect", 1, "mx-recopen", 0)
    wire("mx-recopen", 0, "mx-rec", 0)
    box("mx-recon", "message", rec_x, dac_y + 60, 30, 22, "1")
    wire("mx-rect", 0, "mx-recon", 0)
    wire("mx-recon", 0, "mx-rec", 0)
    # So the console says whether the click reached the chain at all. Silence
    # from a print is a different diagnosis from silence from sfrecord~.
    box("mx-recprint", "newobj", rec_x + 150, dac_y + 90, 130, 22,
        "print MEASURE", no=0)
    wire("mx-rect", 0, "mx-recprint", 0)
    box("mx-recdel", "newobj", rec_x + 40, dac_y + 90, 90, 22, "delay 20000")
    wire("mx-rect", 0, "mx-recdel", 0)
    box("mx-recoff", "message", rec_x, dac_y + 90, 30, 22, "0")
    wire("mx-recdel", 0, "mx-recoff", 0)
    wire("mx-recoff", 0, "mx-rec", 0)

    # Audio toggle, switched on at load. Requested: everything ready so the
    # only remaining action is PLAY. delay 500 lets the rest of the loadbang
    # chain settle before DSP starts, otherwise the first buffer can carry
    # whatever the voices were mid-initialisation.
    box("out-at", "toggle", 165, dac_y - 2, 25, 25, ot=["int"])
    box("out-adel", "newobj", 240, dac_y - 30, 80, 22, "delay 500")
    wire("tr-lb", 0, "out-adel", 0)
    box("out-aon", "message", 330, dac_y - 30, 30, 22, "1")
    wire("out-adel", 0, "out-aon", 0)
    wire("out-aon", 0, "out-at", 0)
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
    all_params = MACROS + ["pitch", "decay_ms", "exciter_type", "body_type", "pan"]
    all_labels = MACRO_LABELS + ["PITCH", "DECAY", "EXCITER", "BODY", "PAN"]
    macro_route = "route " + " ".join(all_params)
    n_params = len(all_params)

    box("vc-route", "newobj", 75, Y_EDITOR + 95, 900, 22, macro_route,
        ni=1, no=n_params + 1, ot=[""] * (n_params + 1))
    wire("vc-js", 6, "vc-route", 0)

    # 13 parameter dials (single row, 83px spacing = 13 × 83 = 1079 — fits in window)
    dial_y = Y_EDITOR + 125
    dial_spacing = 83

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

    # Tap sequencer outlets → prepend trig N → flam engine inlet 0
    for i in range(6):
        fx = VOICE_COLS[i]
        box(f"fl-tp-{i}", "newobj", fx, Y_FLAM - 35, 95, 22,
            f"prepend trig {i}", ot=[""])
        wire(f"fl-tp-{i}", 0, "fl-js", 0)

    # Flam engine JS (7 outlets: 0-5=voice bangs, 6=status)
    box("fl-js", "newobj", 75, Y_FLAM, 750, 22,
        "js flamengine.js", ni=3, no=7,
        ot=["bang", "bang", "bang", "bang", "bang", "bang", ""])

    # Flam engine outlets → voice click~ via send (below JS)
    for i in range(6):
        fx = VOICE_COLS[i]
        box(f"fl-snd-{i}", "newobj", fx, Y_FLAM + 25, 80, 22,
            f"send v{i}_trig", ni=1, no=0)
        wire("fl-js", i, f"fl-snd-{i}", 0)

    # Transport tempo → flam engine inlet 2
    wire("tr-ms", 0, "fl-js", 2)

    # ── Master flam controls (row 1: SUBDIV PROB HUMAN BURST) ──
    my1 = Y_FLAM + 52
    comment("fl-master-lbl", 75, my1, "MASTER:", fontface=1, w=65)

    box("fl-m-sub", "umenu", 145, my1, 75, 20,
        no=2, ot=["int", ""],
        items=["OFF", ",", "1/32", ",", "1/48", ",", "1/64", ",", "1/96"])
    box("fl-m-sub-p", "newobj", 225, my1, 140, 22,
        "prepend master_subdivision", ot=[""])
    wire("fl-m-sub", 0, "fl-m-sub-p", 0)
    wire("fl-m-sub-p", 0, "fl-js", 1)

    box("fl-m-prob", "dial", 375, my1 - 5, 30, 30,
        no=1, ot=["int"], parameter_enable=0)
    box("fl-m-prob-p", "newobj", 410, my1, 140, 22,
        "prepend master_probability", ot=[""])
    comment("fl-m-prob-l", 375, my1 + 28, "PROB", fontsize=9.0, w=35)
    wire("fl-m-prob", 0, "fl-m-prob-p", 0)
    wire("fl-m-prob-p", 0, "fl-js", 1)

    box("fl-m-hum", "dial", 555, my1 - 5, 30, 30,
        no=1, ot=["int"], parameter_enable=0)
    box("fl-m-hum-p", "newobj", 590, my1, 140, 22,
        "prepend master_humanize", ot=[""])
    comment("fl-m-hum-l", 555, my1 + 28, "HUMAN", fontsize=9.0, w=45)
    wire("fl-m-hum", 0, "fl-m-hum-p", 0)
    wire("fl-m-hum-p", 0, "fl-js", 1)

    box("fl-m-burst", "number", 735, my1, 40, 22,
        no=2, ot=["int", "bang"], minimum=1, maximum=8)
    box("fl-m-burst-p", "newobj", 780, my1, 120, 22,
        "prepend master_burst", ot=[""])
    comment("fl-m-burst-l", 735, my1 + 25, "BURST", fontsize=9.0, w=45)
    wire("fl-m-burst", 0, "fl-m-burst-p", 0)
    wire("fl-m-burst-p", 0, "fl-js", 1)

    # ── Master row 2: PITCH + VDECAY (clear of row 1) ──
    my2 = Y_FLAM + 85
    comment("fl-master-lbl2", 375, my2, "PITCH:", fontface=1,
            fontsize=9.0, w=45)
    box("fl-m-pitch", "dial", 420, my2 - 5, 30, 30,
        no=1, ot=["int"], parameter_enable=0)
    box("fl-m-pitch-p", "newobj", 455, my2, 140, 22,
        "prepend master_pitch_mod", ot=[""])
    wire("fl-m-pitch", 0, "fl-m-pitch-p", 0)
    wire("fl-m-pitch-p", 0, "fl-js", 1)

    comment("fl-master-lbl3", 600, my2, "VDECAY:", fontface=1,
            fontsize=9.0, w=55)
    box("fl-m-vdecay", "dial", 660, my2 - 5, 30, 30,
        no=1, ot=["int"], parameter_enable=0)
    box("fl-m-vdecay-p", "newobj", 695, my2, 140, 22,
        "prepend master_vel_decay", ot=[""])
    wire("fl-m-vdecay", 0, "fl-m-vdecay-p", 0)
    wire("fl-m-vdecay-p", 0, "fl-js", 1)

    # ── Per-voice flam controls (6 columns, variable row heights) ──
    # Prepends are narrowed to fit within 150px columns and use send/receive
    # to eliminate long wires crossing the patch.
    FLAM_PARAMS = ["subdivision", "probability", "humanize", "burst", "pitch_mod", "vel_decay"]
    FLAM_LABELS = ["SUBDIV", "PROB %", "HUMAN", "BURST", "PITCH", "VDECAY"]
    FLAM_ROW_H = {"subdivision": 25, "probability": 38, "humanize": 38,
                  "burst": 28, "pitch_mod": 38, "vel_decay": 38}

    flam_ctrl_y = Y_FLAM + 115

    for i in range(6):
        fx = VOICE_COLS[i]
        comment(f"fl-vl-{i}", fx, flam_ctrl_y, VOICES[i]["name"],
                fontface=1, fontsize=10.0, w=55)

        cum_y = 18  # offset below voice name
        for j, (fparam, flabel) in enumerate(zip(FLAM_PARAMS, FLAM_LABELS)):
            fy = flam_ctrl_y + cum_y

            if fparam == "subdivision":
                box(f"fl-{fparam}-{i}", "umenu", fx, fy, 75, 20,
                    no=2, ot=["int", ""],
                    items=["OFF", ",", "1/32", ",", "1/48", ",", "1/64", ",", "1/96"])
                box(f"fl-{fparam}-p-{i}", "newobj", fx + 80, fy, 65, 22,
                    f"prepend {fparam} {i}", ot=[""])
                wire(f"fl-{fparam}-{i}", 0, f"fl-{fparam}-p-{i}", 0)
            elif fparam == "burst":
                box(f"fl-{fparam}-{i}", "number", fx, fy, 40, 22,
                    no=2, ot=["int", "bang"], minimum=1, maximum=8)
                box(f"fl-{fparam}-p-{i}", "newobj", fx + 45, fy, 100, 22,
                    f"prepend {fparam} {i}", ot=[""])
                wire(f"fl-{fparam}-{i}", 0, f"fl-{fparam}-p-{i}", 0)
            else:
                box(f"fl-{fparam}-{i}", "dial", fx, fy, 30, 30,
                    no=1, ot=["int"], parameter_enable=0)
                box(f"fl-{fparam}-p-{i}", "newobj", fx + 35, fy + 4, 110, 22,
                    f"prepend {fparam} {i}", ot=[""])
                wire(f"fl-{fparam}-{i}", 0, f"fl-{fparam}-p-{i}", 0)

            # Wire prepend → per-voice send bus (wireless to fl-js)
            wire(f"fl-{fparam}-p-{i}", 0, f"fl-sctl-{i}", 0)

            cum_y += FLAM_ROW_H[fparam]

        # Column labels (only for first voice column)
        if i == 0:
            lbl_cum_y = 18
            for j, flabel in enumerate(FLAM_LABELS):
                fy = flam_ctrl_y + lbl_cum_y
                comment(f"fl-lbl-{j}", 15, fy + 2, flabel,
                        fontsize=9.0, w=55)
                lbl_cum_y += FLAM_ROW_H[FLAM_PARAMS[j]]

    # ── Per-voice send objects (below controls, one per column) ──
    sctl_y = flam_ctrl_y + cum_y + 5
    for i in range(6):
        box(f"fl-sctl-{i}", "newobj", VOICE_COLS[i], sctl_y, 65, 22,
            "s fl_ctrl", ni=1, no=0)

    # ── Receive fl_ctrl → fl-js inlet 1 (wireless from per-voice sends) ──
    box("fl-r1", "newobj", 930, Y_FLAM + 25, 70, 22,
        "r fl_ctrl", ni=0, no=1, ot=[""])
    wire("fl-r1", 0, "fl-js", 1)

    # ── Receive fl_ctrl → kit manager notifications ──
    box("fl-r2", "newobj", 75, sctl_y + 30, 70, 22,
        "r fl_ctrl", ni=0, no=1, ot=[""])
    box("fl-km-notify", "newobj", 75, sctl_y + 55, 140, 22,
        "prepend flam_param", ot=[""])
    wire("fl-r2", 0, "fl-km-notify", 0)
    wire("fl-km-notify", 0, "km-js", 0)

    # ═══════════════════════ GROOVE ═══════════════════════
    section_header("sec-gr", 30, Y_GROOVE - 15, "GROOVE")

    # Global swing dial + label
    box("gr-swing", "dial", 75, Y_GROOVE, 40, 40,
        no=1, ot=["int"], parameter_enable=0)
    comment("gr-swing-l", 75, Y_GROOVE + 42, "SWING", fontface=1, w=50)
    box("gr-swing-p", "newobj", 120, Y_GROOVE + 10, 100, 22,
        "prepend swing", ot=[""])
    wire("gr-swing", 0, "gr-swing-p", 0)
    wire("gr-swing-p", 0, "fl-js", 1)

    # Master groove offset dial
    box("gr-master", "dial", 225, Y_GROOVE, 40, 40,
        no=1, ot=["int"], parameter_enable=0)
    comment("gr-master-l", 225, Y_GROOVE + 42, "M.GROOVE", fontface=1, w=65)
    box("gr-master-p", "newobj", 270, Y_GROOVE + 10, 120, 22,
        "prepend master_groove", ot=[""])
    wire("gr-master", 0, "gr-master-p", 0)
    wire("gr-master-p", 0, "fl-js", 1)

    # Per-voice groove offset dials (6 columns)
    gr_ctrl_y = Y_GROOVE + 70
    for i in range(6):
        gx = VOICE_COLS[i]
        comment(f"gr-vl-{i}", gx, gr_ctrl_y, VOICES[i]["name"],
                fontface=1, fontsize=10.0, w=55)
        box(f"gr-off-{i}", "dial", gx, gr_ctrl_y + 18, 30, 30,
            no=1, ot=["int"], parameter_enable=0)
        # Center default at 64
        box(f"gr-def-{i}", "message", gx + 35, gr_ctrl_y + 22, 22, 18,
            "64", ni=2, ot=[""])
        wire("tr-lb", 0, f"gr-def-{i}", 0)
        wire(f"gr-def-{i}", 0, f"gr-off-{i}", 0)

        box(f"gr-off-p-{i}", "newobj", gx + 35, gr_ctrl_y + 4, 110, 22,
            f"prepend groove {i}", ot=[""])
        wire(f"gr-off-{i}", 0, f"gr-off-p-{i}", 0)
        wire(f"gr-off-p-{i}", 0, "fl-js", 1)

    comment("gr-hint", 75, gr_ctrl_y + 55,
            "Center=straight. Left=push back. Right=push forward.",
            w=400)

    # ═══════════════════════ LFO ENGINE ═══════════════════════
    section_header("sec-lfo", 30, Y_LFO - 15, "LFO ENGINE")

    # LFO engine JS (2 inlets, 2 outlets)
    box("lfo-js", "newobj", 75, Y_LFO, 750, 22,
        "js lfoengine.js", ni=2, no=2,
        ot=["", ""])

    # Transport tempo → LFO engine inlet 0
    wire("tr-ms", 0, "lfo-js", 0)

    # ── Global LFO controls row ──
    lfo_glob_y = Y_LFO + 30

    # Master Rate dial
    box("lfo-g-rate", "dial", 75, lfo_glob_y, 30, 30,
        no=1, ot=["int"], parameter_enable=0)
    comment("lfo-g-rate-l", 75, lfo_glob_y + 32, "RATE", fontsize=9.0, w=35)
    box("lfo-g-rate-p", "newobj", 110, lfo_glob_y + 4, 110, 22,
        "prepend master_rate", ot=[""])
    wire("lfo-g-rate", 0, "lfo-g-rate-p", 0)
    wire("lfo-g-rate-p", 0, "lfo-js", 1)

    # Master Depth dial
    box("lfo-g-depth", "dial", 225, lfo_glob_y, 30, 30,
        no=1, ot=["int"], parameter_enable=0)
    comment("lfo-g-depth-l", 225, lfo_glob_y + 32, "DEPTH", fontsize=9.0, w=40)
    box("lfo-g-depth-p", "newobj", 260, lfo_glob_y + 4, 120, 22,
        "prepend master_depth", ot=[""])
    wire("lfo-g-depth", 0, "lfo-g-depth-p", 0)
    wire("lfo-g-depth-p", 0, "lfo-js", 1)

    # Coupling K dial
    box("lfo-g-K", "dial", 390, lfo_glob_y, 30, 30,
        no=1, ot=["int"], parameter_enable=0)
    comment("lfo-g-K-l", 390, lfo_glob_y + 32, "COUPLE", fontsize=9.0, w=45)
    box("lfo-g-K-p", "newobj", 425, lfo_glob_y + 4, 100, 22,
        "prepend coupling", ot=[""])
    wire("lfo-g-K", 0, "lfo-g-K-p", 0)
    wire("lfo-g-K-p", 0, "lfo-js", 1)

    # Topology umenu (13 veve presets)
    TOPO_NAMES = ["All-to-all", "Legba", "Carrefour", "Ferraille",
                  "Ogou", "Ring", "Marassa", "Damballah",
                  "Erzulie", "Baron", "Simbi", "Ayizan", "Gran Bwa"]
    topo_items = []
    for tn in TOPO_NAMES:
        if topo_items:
            topo_items.append(",")
        topo_items.append(tn)

    box("lfo-g-topo", "umenu", 540, lfo_glob_y + 4, 100, 20,
        no=2, ot=["int", ""], items=topo_items)
    comment("lfo-g-topo-l", 540, lfo_glob_y + 26, "TOPOLOGY", fontsize=9.0, w=60)
    box("lfo-g-topo-p", "newobj", 645, lfo_glob_y + 4, 100, 22,
        "prepend topology", ot=[""])
    wire("lfo-g-topo", 0, "lfo-g-topo-p", 0)
    wire("lfo-g-topo-p", 0, "lfo-js", 1)

    # Chaos rho dial
    box("lfo-g-rho", "dial", 790, lfo_glob_y, 30, 30,
        no=1, ot=["int"], parameter_enable=0)
    comment("lfo-g-rho-l", 790, lfo_glob_y + 32, "CHAOS", fontsize=9.0, w=40)
    box("lfo-g-rho-p", "newobj", 825, lfo_glob_y + 4, 100, 22,
        "prepend chaos_rho", ot=[""])
    wire("lfo-g-rho", 0, "lfo-g-rho-p", 0)
    wire("lfo-g-rho-p", 0, "lfo-js", 1)

    # ── Per-voice LFO controls (6 columns) ──
    SHAPE_ITEMS = ["Sine", ",", "Triangle", ",", "Saw Up", ",", "Saw Down", ",",
                   "Square", ",", "S&H", ",", "Lorenz X", ",", "Lorenz Y", ",",
                   "Myombo 2", ",", "Myombo 3", ",", "Chased Chick", ",",
                   "Hunted Bird", ",", "Lion Stom", ",", "Ancestor"]
    DEST_ITEMS = ["OFF", ",", "Pan", ",", "Pitch", ",", "Stress", ",", "Bloom", ",",
                  "Decay", ",", "Mist", ",", "Heat", ",", "Drift", ",", "Density"]

    lfo_ctrl_y = Y_LFO + 75

    for i in range(6):
        lx = VOICE_COLS[i]
        comment(f"lfo-vl-{i}", lx, lfo_ctrl_y, VOICES[i]["name"],
                fontface=1, fontsize=10.0, w=55)

        # Rate dial
        box(f"lfo-rate-{i}", "dial", lx, lfo_ctrl_y + 18, 30, 30,
            no=1, ot=["int"], parameter_enable=0)
        box(f"lfo-rate-p-{i}", "newobj", lx + 35, lfo_ctrl_y + 22, 110, 22,
            f"prepend lfo_rate {i}", ot=[""])
        wire(f"lfo-rate-{i}", 0, f"lfo-rate-p-{i}", 0)
        wire(f"lfo-rate-p-{i}", 0, "lfo-js", 1)

        # Depth dial
        box(f"lfo-depth-{i}", "dial", lx, lfo_ctrl_y + 56, 30, 30,
            no=1, ot=["int"], parameter_enable=0)
        box(f"lfo-depth-p-{i}", "newobj", lx + 35, lfo_ctrl_y + 60, 110, 22,
            f"prepend lfo_depth {i}", ot=[""])
        wire(f"lfo-depth-{i}", 0, f"lfo-depth-p-{i}", 0)
        wire(f"lfo-depth-p-{i}", 0, "lfo-js", 1)

        # Shape umenu
        box(f"lfo-shape-{i}", "umenu", lx, lfo_ctrl_y + 94, 100, 20,
            no=2, ot=["int", ""], items=SHAPE_ITEMS)
        box(f"lfo-shape-p-{i}", "newobj", lx + 105, lfo_ctrl_y + 94, 40, 22,
            f"prepend lfo_shape {i}", ot=[""])
        wire(f"lfo-shape-{i}", 0, f"lfo-shape-p-{i}", 0)
        wire(f"lfo-shape-p-{i}", 0, "lfo-js", 1)

        # Destination umenu
        box(f"lfo-dest-{i}", "umenu", lx, lfo_ctrl_y + 120, 100, 20,
            no=2, ot=["int", ""], items=DEST_ITEMS)
        box(f"lfo-dest-p-{i}", "newobj", lx + 105, lfo_ctrl_y + 120, 40, 22,
            f"prepend lfo_dest {i}", ot=[""])
        wire(f"lfo-dest-{i}", 0, f"lfo-dest-p-{i}", 0)
        wire(f"lfo-dest-p-{i}", 0, "lfo-js", 1)

    # Labels (left edge)
    comment("lfo-lbl-rate", 15, lfo_ctrl_y + 22, "RATE", fontsize=9.0, w=40)
    comment("lfo-lbl-depth", 15, lfo_ctrl_y + 60, "DEPTH", fontsize=9.0, w=45)
    comment("lfo-lbl-shape", 15, lfo_ctrl_y + 94, "SHAPE", fontsize=9.0, w=45)
    comment("lfo-lbl-dest", 15, lfo_ctrl_y + 120, "DEST", fontsize=9.0, w=40)

    # ═══════════════════════ KIT MANAGER ═══════════════════════
    section_header("sec-km", 30, Y_KITS - 15, "KITS")

    # Kit manager JS (8 outlets: params, patterns, lengths, status, flam, levels, lfo, swing/groove)
    box("km-js", "newobj", 75, Y_KITS, 750, 22,
        "js kitmanager.js", ni=1, no=8,
        ot=["", "", "", "", "", "", "", ""])

    # Init kit manager on load
    box("km-savedef", "message", 75, Y_KITS - 60, 150, 22, "save_default")
    wire("km-savedef", 0, "km-js", 0)
    box("km-cleardef", "message", 235, Y_KITS - 60, 110, 22, "clear_default")
    wire("km-cleardef", 0, "km-js", 0)
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

    # Kit manager outlet 5 → level restore via route → send
    box("km-lvl-route", "newobj", 75, Y_KITS + 30, 250, 22,
        "route 0 1 2 3 4 5", ni=1, no=7, ot=[""] * 7)
    wire("km-js", 5, "km-lvl-route", 0)
    for i in range(6):
        box(f"km-lvl-snd-{i}", "newobj", 75 + i * 120, Y_KITS + 55, 85, 22,
            f"send v{i}_level", ni=1, no=0)
        wire("km-lvl-route", i, f"km-lvl-snd-{i}", 0)

    # Kit manager outlet 6 → LFO engine (LFO restore)
    wire("km-js", 6, "lfo-js", 1)

    # Kit manager outlet 7 → flam engine (swing/groove restore)
    wire("km-js", 7, "fl-js", 1)

    # Voicectrl outlet 7 → kit manager (param change notifications)
    wire("vc-js", 7, "km-js", 0)

    # matrixctrl → kit manager (pattern change notifications)
    box("km-pcell", "newobj", 75, Y_KITS + 30, 120, 22,
        "prepend pattern_cell", ot=[""])
    wire("sq-grid", 0, "km-pcell", 0)
    wire("km-pcell", 0, "km-js", 0)

    # Length changes → kit manager
    for i in range(6):
        box(f"km-len-{i}", "newobj", 75 + i * 120, Y_KITS + 80, 130, 22,
            f"prepend voice_length {i}", ot=[""])
        wire(f"len-{i}", 0, f"km-len-{i}", 0)
        wire(f"km-len-{i}", 0, "km-js", 0)

    # 8 kit slot buttons: SAVE row + LOAD row
    kit_x = 75
    kit_btn_w = 80
    kit_btn_spacing = 105

    comment("km-sv-lbl", kit_x, Y_KITS + 110, "SAVE:", fontface=1, w=45)
    comment("km-ld-lbl", kit_x, Y_KITS + 140, "LOAD:", fontface=1, w=45)

    for k in range(NUM_SLOTS):
        kx = kit_x + 50 + k * kit_btn_spacing

        # Save button
        box(f"km-sv-{k}", "message", kx, Y_KITS + 110, 45, 22,
            f"save {k}", ni=2, ot=[""])
        wire(f"km-sv-{k}", 0, "km-js", 0)

        # Kit name label (updated by kit manager outlet 3)
        box(f"km-nm-{k}", "comment", kx + 48, Y_KITS + 110, 50, 20,
            f"---", no=0, fontsize=10.0)

        # Load button
        box(f"km-ld-{k}", "message", kx, Y_KITS + 140, 45, 22,
            f"load {k}", ni=2, ot=[""])
        wire(f"km-ld-{k}", 0, "km-js", 0)

    # Status display (kit manager outlet 3)
    box("km-status-route", "newobj", 75, Y_KITS + 170, 200, 22,
        "route status kit_name", ni=1, no=3, ot=["", "", ""])
    wire("km-js", 3, "km-status-route", 0)

    # Status text display
    comment("km-status", 285, Y_KITS + 170, "", w=300, fontsize=11.0)

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
    build_presentation()
    return {
        "patcher": {
            "fileversion": 1,
            "appversion": {"major": 9, "minor": 0, "revision": 0,
                           "architecture": "x64", "modernui": 1},
            "classnamespace": "box",
            "rect": [40, 60, PW, PH],
            "bglocked": 0,
            "openinpresentation": 1,
            "bgcolor": [0.0, 0.0, 0.0, 1.0],
            "default_fontsize": 12.0,
            "default_fontname": "Arial",
            "gridsize": [15.0, 15.0],
            "gridsnaponopen": 1,
            "objectsnaponopen": 1,
            "statusbarvisible": 2,
            "toolbarvisible": 1,
            "description": "Maud - 6-Voice Polymetric Alien Percussion Groovebox",
            "boxes": _boxes,
            "lines": _lines,
        }
    }




# ═══════════════════════ PRESENTATION LAYOUT ═══════════════════════
# Everything above builds the patching view, where the wires live. This puts
# only the things you touch on a clean surface. Chrysalis rules: black ground,
# borders rather than fills, sharp edges, sentence case, one accent, restraint.
#
# Hand-edited colours from the April patch are folded in here rather than left
# in the .maxpat, which is the file that gets overwritten on every regenerate.
# That is why they kept disappearing.

PW, PH = 1180, 760
ACCENT = [0.30, 0.80, 0.50, 1.0]        # the green from the April step indicator
GRID_ON = [0.765, 1.0, 0.616, 1.0]      # April's matrixctrl cell colour
GRID_OFF = [0.204, 0.204, 0.204, 1.0]   # April's element colour
DIM = [0.42, 0.42, 0.42, 1.0]
FG = [0.91, 0.91, 0.91, 1.0]


def present(bid, x, y, w, h):
    """Place an existing box in presentation view."""
    for e in _boxes:
        if e["box"]["id"] == bid:
            e["box"]["presentation"] = 1
            e["box"]["presentation_rect"] = [x, y, w, h]
            return True
    return False


def plabel(bid, x, y, text, w=120, size=11, col=None, face=0):
    """A comment that exists only in presentation."""
    box(bid, "comment", -900, -900, w, 15, text,
        presentation=1, presentation_rect=[x, y, w, 15],
        textcolor=col or DIM, fontsize=size, fontface=face, no=0)


def prect(bid, x, y, w, h, col=None):
    """A hairline separator. Borders, never filled blocks."""
    box(bid, "panel", -900, -900, w, h,
        presentation=1, presentation_rect=[x, y, w, h],
        bgfillcolor_type="color", bgfillcolor_color=col or [0, 0, 0, 0],
        border=1, bordercolor=[1, 1, 1, 0.07], rounded=0, no=0, ni=1)


def build_presentation():
    M = 30                                   # margin
    # ── Header ────────────────────────────────────────────────────
    plabel("p-title", M, 24, "Maud", w=200, size=26, col=FG)
    plabel("p-sub", M, 58, "Six-voice polymetric groovebox", w=240, size=11)

    x = 300
    plabel("p-bpm-l", x, 28, "Tempo", w=60)
    present("tr-bpm", x, 47, 60, 22)
    present("tr-div", x + 74, 47, 66, 22)
    plabel("p-div-l", x + 74, 28, "Division", w=60)
    plabel("p-play-l", x + 160, 28, "Play", w=40)
    present("tr-play", x + 160, 46, 26, 26)

    # Timing, the numbers that say whether the clock is holding.
    tx = x + 230
    plabel("p-t-l", tx, 28, "Step / best / worst, ms", w=180)
    present("tr-tnow", tx, 47, 62, 22)
    present("tr-tbest", tx + 68, 47, 62, 22)
    present("tr-tworst", tx + 136, 47, 62, 22)

    # Sequencer source, and audio.
    sx = tx + 240
    plabel("p-nq-l", sx, 28, "Native sequencer", w=120)
    present("nq-sw", sx, 46, 26, 26)
    plabel("p-au-l", sx + 120, 28, "Audio", w=60)
    present("out-at", sx + 120, 46, 26, 26)

    # Persisting the current state as the load default. kitmanager writes the
    # whole snapshot to maud_default.json beside the patch and reads it at init,
    # so "how it is now" survives a reopen instead of dying with the patch.
    dx2 = sx + 200
    plabel("p-def-l", dx2, 28, "Load state", w=110)
    present("km-savedef", dx2, 46, 110, 22)
    present("km-cleardef", dx2 + 118, 46, 62, 22)

    prect("p-r1", M, 88, PW - 2 * M, 1)

    # ── Sequencer ─────────────────────────────────────────────────
    gy = 128
    plabel("p-seq-l", M, 104, "Sequencer", w=88, size=13, col=FG)
    present("sq-ind", M + 92, gy + 2, 780, 10)
    present("sq-grid", M + 92, gy + 16, 780, 150)
    for i, v in enumerate(VOICES):
        plabel(f"p-vn-{i}", M, gy + 22 + i * 25, v["name"], w=86, size=11,
               col=FG)
        present(f"len-{i}", M + 884, gy + 18 + i * 25, 56, 20)
    plabel("p-len-l", M + 884, gy - 2, "Length", w=60)

    # Bar and beat markers. 780px over 32 steps is 24.375px a step.
    step_w = 780.0 / 32
    for b in range(1, 8):
        bx = M + 92 + b * 4 * step_w
        strong = (b % 4 == 0)          # every bar
        half = (b % 2 == 0)            # every half bar
        col = [1, 1, 1, 0.22] if strong else ([1, 1, 1, 0.12] if half else [1, 1, 1, 0.06])
        prect(f"p-bar-{b}", bx - 1, gy + 2, 1, 164, col)
    for b in range(8):
        plabel(f"p-bn-{b}", M + 92 + b * 4 * step_w + 2, gy - 15,
               str(b + 1), w=18, size=9)

    prect("p-r2", M, gy + 184, PW - 2 * M, 1)

    # ── Voice ─────────────────────────────────────────────────────
    vy = gy + 206
    plabel("p-v-l", M, vy - 24, "Voice", w=200, size=13, col=FG)
    present("vc-tab", M, vy, 300, 26)
    DIALS = ["STRESS", "BLOOM", "SCAR", "WEIGHT", "MIST", "HEAT", "DRIFT",
             "DENSITY", "PITCH", "DECAY", "EXCITER", "BODY", "PAN"]
    for j, name in enumerate(DIALS):
        col, row = j % 7, j // 7
        dx = M + col * 96
        dy = vy + 44 + row * 82
        present(f"dd-{j}", dx, dy, 46, 46)
        plabel(f"p-dl-{j}", dx - 6, dy + 48, name.capitalize(), w=60, size=10)

    prect("p-r3", M, vy + 216, PW - 2 * M, 1)

    # ── Mixer ─────────────────────────────────────────────────────
    my = vy + 238
    plabel("p-mx-l", M, my - 24, "Mixer", w=200, size=13, col=FG)
    for i, v in enumerate(VOICES):
        mx = M + i * 96
        present(f"vlf-{i}", mx, my, 56, 22)
        plabel(f"p-ml-{i}", mx, my + 24, v["name"], w=80, size=10)
    present("mx-gain", M + 620, my - 4, 300, 30)
    plabel("p-gain-l", M + 620, my - 22, "Master", w=80)
    present("mx-meter", M + 620, my + 32, 300, 12)

    # Colours, lifted from the April hand-edits so they survive regeneration.
    for e in _boxes:
        b = e["box"]
        if b["id"] == "sq-grid":
            b["bgcolor"] = [0, 0, 0, 0]
            b["color"] = GRID_ON
            b["elementcolor"] = GRID_OFF
        elif b["id"] == "sq-ind":
            b["slidercolor"] = ACCENT


if __name__ == "__main__":
    patch = build()
    with open("Maud.maxpat", "w") as f:
        json.dump(patch, f, indent="\t")
    nb = len(patch["patcher"]["boxes"])
    nl = len(patch["patcher"]["lines"])
    print(f"Generated Maud.maxpat ({nb} objects, {nl} connections)")
