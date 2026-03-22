# Dream Xeno Box

A 6-voice alien percussion instrument built in Max/MSP gen~. Each voice is a material body under pressure — not a drum category. Sound comes from excitation striking a resonant body, passing through fracture and feedback resonance stages, shaped by accumulated memory of past performance. Repetition changes the instrument. Silence restores it.

## Quick Start

1. Open `DreamXenoBox.maxpat` in Max 9
2. Toggle **AUDIO ON/OFF**
3. Toggle **PLAY**
4. Click the matrixctrl grid to edit patterns
5. Click manual trigger buttons (per voice) to test sounds
6. Adjust BPM with the number box
7. Select voice tabs to edit per-voice parameters
8. Save/load kits with the SAVE/LOAD buttons (8 slots)

## Voice Engine (v3)

Single gen~ codebox signal chain (same engine, 6 instances with different defaults):

```
Trigger → Exciter → Body → Fracture → Output
               ↑              ↕           |
               └── Feedback ──┘    Memory/Pressure
```

- **Exciter**: FM impulse click or filtered noise burst
- **Body**: 4 body types (see below). Decay-coupled Q — longer decay = higher resonator sustain
- **Fracture**: Asymmetric wavefold distortion driven by accumulated pressure
- **Feedback Resonance**: Body output feeds back through highpass → tanh limiter → gain into body input. Low mist = ghost notes. High mist + stress = Larsen screech. Bloom controls sustain.
- **Pitch Envelope**: Weight-scaled sweep on trigger — heavy voices get 808-style sub bass bounce
- **Decay**: Non-linear scaling (squared) — snappy at low end, massive sustain at max
- **Memory**: Pressure, heat, fatigue, and stiffness accumulate per hit and decay over silence

## 4 Body Types

| Type | Name | Description |
|------|------|-------------|
| 0 | **Resonator Bank** | 4 parallel inharmonic biquads. Metallic, bell-like, pitched percussion. |
| 1 | **Dispersive Comb** | Comb filter with lowpass in feedback. String/wood resonance. |
| 2 | **Pressure Cavity** | Comb at half-freq + resonator. Feedback tightens under pressure (hard hits compress). Deep sub bass. |
| 3 | **Membrane** | Bessel function mode ratios (1.0, 1.594, 2.136, 2.296). Circular drum head physics. Heavy fundamental. |

## 6 Voice Characters

| Voice | Pitch | Material | Exciter | Body |
|-------|-------|----------|---------|------|
| **Mass** | 30 | Sub bass, seismic earth | FM impulse | Pressure cavity |
| **Vein** | 62 | Taut metal under tension | FM impulse | Resonator bank |
| **Shard** | 84 | Brittle crystal, fractured glass | Noise burst | Resonator bank |
| **Husk** | 52 | Dried hollow shell, dead wood | Noise burst | Dispersive comb |
| **Fault** | 40 | Cracked earth, geological stress | FM impulse | Membrane |
| **Halo** | 72 | Feedback screech, ghost resonance | Noise burst | Resonator bank |

## 8 Macro Controls (per voice)

| Macro | Controls |
|-------|----------|
| **Stress** | Pressure sensitivity + fracture depth + feedback harshness |
| **Bloom** | Feedback sustain duration + body resonance |
| **Scar** | Wavefold depth + asymmetry |
| **Weight** | Body mass / pitch scaling + pitch envelope sweep |
| **Mist** | Feedback resonance amount (0=off, 1=screech) |
| **Heat** | Exciter brightness + filter cutoff |
| **Drift** | Pitch instability (noise x pressure) |
| **Density** | Exciter burst length + bandwidth |

## Flam Engine

Sub-rhythmic burst generator per voice. Sits between sequencer and voice triggers.

| Control | Range | Description |
|---------|-------|-------------|
| **Subdivision** | OFF, 1/32, 1/48, 1/64, 1/96 | How fast the sub-triggers fire |
| **Probability** | 0-100% | Chance each sub-trigger fires (low = sparse ghost flams, high = rolls) |
| **Humanize** | 0-100% | Random timing jitter per sub-trigger (organic feel) |
| **Burst** | 1-8 | How many sub-hits after each main sequencer hit |

When subdivision is OFF, voice behaves normally. When active, each sequencer hit spawns a cloud of micro-triggers at the chosen rate.

## Kit System

8 kit slots store the complete instrument state:
- All 6 voice parameters (72 values)
- All sequencer patterns (6 × 32 steps)
- Per-voice step lengths
- Per-voice flam settings (subdivision, probability, humanize, burst)

Kit 1 ("INIT") is auto-saved on load with default settings.

## Architecture

```
TRANSPORT:  metro → counter → step dispatch
SEQUENCER:  js sequencer.js (6 × 32 steps, polymetric lengths)
FLAM:       js flamengine.js (sub-rhythmic bursts, probability, humanize)
VOICES:     6 × gen~ (v3 engine: 4 body types, feedback resonance, non-linear decay)
MIXER:      send~/receive~ → +~ chain → gain~ → dac~
EDITOR:     live.tab voice select → js voicectrl.js → send/receive → gen~
KITS:       js kitmanager.js (8 slots, save/load/name, includes flam state)
MIDI:       notein → select → per-voice triggers
```

## Files

| File | Purpose |
|------|---------|
| `DreamXenoBox.maxpat` | Full 6-voice sequencer groovebox |
| `DreamXenoBox_proto.maxpat` | Single-voice prototype for testing |
| `sequencer.js` | Polymetric step sequencer dispatcher |
| `flamengine.js` | Sub-rhythmic burst generator (flam/rolls/texture) |
| `voicectrl.js` | Tabbed voice parameter editor |
| `kitmanager.js` | Kit save/load/name manager (8 slots) |
| `voice_engine.genexpr` | gen~ codebox source (reference) |
| `build_patch.py` | Python script that generates the .maxpat |
| `ARCHITECTURE.md` | Full system design document |
| `FX.md` | Effects module designs (parked) |

## Requirements

- Max 9 (or Max 8 with gen~)
- No external packages needed
- All files must be in the same directory

## Roadmap

- [x] Stage 2: Single voice prototype
- [x] Stage 3: 6-voice expansion + polymetric sequencer
- [x] Stage 4: Per-voice macro controls + MIDI mapping
- [x] Stage 4.5: Voice engine v2 (feedback resonance, sub bass, decay-coupled Q)
- [x] Stage 4.6: Kit save/load system (8 slots)
- [x] Stage 4.7: Voice engine v3 (4 body types, non-linear decay)
- [x] Stage 4.8: Flam engine (sub-rhythmic bursts, probability, humanize)
- [ ] Stage 5: Parameter locks (per-step macro overrides)
- [ ] Stage 6: Global bus effects (saturation, void delay, matter dispersion)
- [ ] Stage 7: Scene system (kit + transport, morph between scenes)
- [ ] Stage 7+: FluCoMa integration (descriptor-driven morphing, corpus-to-params)
- [ ] RNBO export for VST/AU and embedded hardware (Daisy/Bela)
