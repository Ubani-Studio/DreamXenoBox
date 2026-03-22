# Dream Xeno Box

A 6-voice alien percussion instrument built in Max/MSP gen~. Each voice is a material body under pressure — not a drum category. Sound comes from excitation striking a resonant body, passing through fracture and atmospheric stages, shaped by accumulated memory of past performance. Repetition changes the instrument. Silence restores it.

## Quick Start

1. Open `DreamXenoBox.maxpat` in Max 9
2. Toggle **AUDIO ON/OFF**
3. Toggle **PLAY**
4. Click the multislider grids to edit patterns
5. Click manual trigger buttons (per voice) to test sounds
6. Adjust BPM with the number box

## Voice Engine

Single gen~ codebox signal chain (same engine, 6 instances with different defaults):

```
Trigger → Exciter → Body → Fracture → Halo → Output
                                ↕
                        Memory / Pressure State
```

- **Exciter**: FM impulse click or filtered noise burst
- **Body**: 4-resonator inharmonic bank or dispersive comb filter
- **Fracture**: Asymmetric wavefold distortion driven by accumulated pressure
- **Halo**: Noise veil atmospheric tail (parallel to fracture)
- **Memory**: Pressure, heat, fatigue, and stiffness accumulate per hit and decay over silence

## 6 Voice Characters

| Voice | Pitch | Material | Exciter | Body |
|-------|-------|----------|---------|------|
| **Mass** | 36 | Dense mineral, compressed earth | FM impulse | Dispersive comb |
| **Vein** | 62 | Taut metal under tension | FM impulse | Resonator bank |
| **Shard** | 84 | Brittle crystal, fractured glass | Noise burst | Resonator bank |
| **Husk** | 52 | Dried hollow shell, dead wood | Noise burst | Dispersive comb |
| **Fault** | 40 | Cracked earth, geological stress | FM impulse | Dispersive comb |
| **Halo** | 72 | Spectral mist, dispersed energy | Noise burst | Resonator bank |

## 8 Macro Controls (per voice)

| Macro | Controls |
|-------|----------|
| **Stress** | Pressure sensitivity + fracture depth |
| **Bloom** | Halo decay + body sustain |
| **Scar** | Wavefold depth + asymmetry |
| **Weight** | Body mass / pitch scaling |
| **Mist** | Halo level + diffusion |
| **Heat** | Exciter brightness + filter cutoff |
| **Drift** | Pitch instability (noise x pressure) |
| **Density** | Exciter burst length + bandwidth |

## Architecture

```
TRANSPORT: metro → counter 0-15 → step dispatch
SEQUENCER: js sequencer.js (6 patterns × 16 steps)
VOICES:    6 × gen~ (same voice engine, different presets)
MIXER:     6 × level → sum chain → master gain → dac~
```

## Files

| File | Purpose |
|------|---------|
| `DreamXenoBox.maxpat` | Full 6-voice sequencer groovebox (Stage 3) |
| `DreamXenoBox_proto.maxpat` | Single-voice prototype for testing (Stage 2) |
| `sequencer.js` | Step sequencer dispatcher (JS for Max) |
| `voice_engine.genexpr` | gen~ codebox source (reference) |
| `build_patch.py` | Python script that generates the .maxpat |
| `ARCHITECTURE.md` | Full system design document |
| `FX.md` | Effects module designs (parked for post-sequencer) |

## Requirements

- Max 9 (or Max 8 with gen~)
- No external packages needed
- All files must be in the same directory

## Roadmap

- [x] Stage 2: Single voice prototype
- [x] Stage 3: 6-voice expansion + 16-step sequencer
- [ ] Stage 4: Per-voice macro controls in UI + MIDI mapping
- [ ] Stage 5: Parameter locks (per-step macro overrides)
- [ ] Stage 6: Global bus effects (saturation, void delay, matter dispersion)
- [ ] Stage 7: Preset/scene system
- [ ] RNBO export for VST/AU and embedded hardware (Daisy/Bela)
