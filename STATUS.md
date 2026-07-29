# Maud — Status & Next Steps

> 6-voice polymetric alien percussion groovebox in Max/MSP gen~

---

## Architecture

```
                         ┌──────────────┐
                         │  sequencer   │  (polymetric step sequencer, per-voice lengths)
                         │  sequencer.js│
                         └──────┬───────┘
                                │ step number per voice
                         ┌──────▼───────┐
                         │  flamengine  │  (sole trigger path: swing + groove + flam bursts)
                         │flamengine.js │
                         └──────┬───────┘
                                │ bang per voice (timed)
                    ┌───────────┼───────────┐
                    ▼           ▼           ▼
              ┌──────────┐ ┌──────────┐ ┌──────────┐
              │ voice 0  │ │ voice 1  │ │  ...x6   │  (gen~ codebox: KS + body + FX)
              │gen~ v0   │ │gen~ v1   │ │          │
              └────┬─────┘ └────┬─────┘ └────┬─────┘
                   │            │            │
              ┌────▼────────────▼────────────▼────┐
              │           mixer (pan law)          │
              │     + LFO pan summing chain        │
              └────────────────┬──────────────────┘
                               │ stereo out
                               ▼

   ┌──────────────┐      ┌──────────────┐      ┌──────────────┐
   │  lfoengine   │─────▶│  voicectrl   │      │  kitmanager  │
   │lfoengine.js  │      │ voicectrl.js │      │kitmanager.js │
   │ 14 shapes    │      │ param routing│      │ 8 kit slots  │
   │ Kuramoto     │      └──────────────┘      └──────────────┘
   │ 13 topologies│
   └──────────────┘
```

---

## What's Built

### Core Engine (stable, tested)
- [x] 6 gen~ voice engines with KS resonator + 4 body types (membrane, bar, string, bell)
- [x] Exciter types: noise burst, click
- [x] Per-voice params: pitch, decay, exciter_type, body_type, stress, bloom, scar, weight, mist, heat_macro, drift_param, density_param, pan
- [x] Equal-power pan law in mixer
- [x] Polymetric step sequencer (per-voice lengths: 4/8/12/16/24/32)
- [x] Voice param controller with 0-127 dial scaling
- [x] MIDI note input (note → voice via stripnote + route)

### Flam Engine (stable, tested)
- [x] Sole trigger path — ALL hits pass through flamengine.js
- [x] Subdivision options: OFF, 1/32, 1/48, 1/64, 1/96
- [x] Per-voice: probability, humanize, burst (1-8 sub-hits)
- [x] Progressive pitch bend + velocity decay across bursts
- [x] Flam pitch envelope gate (vel_decay controls linger)
- [x] Master controls for all flam params

### Swing & Groove (built, needs testing)
- [x] MPC-style global swing (0-100%, delays odd steps)
- [x] Per-voice groove offset (-1 to +1, Elektron-style timing nudge)
- [x] Master groove control
- [x] All timing computed relative to ms_per_step

### LFO Engine (built, needs testing)
- [x] 6 per-voice LFOs running at ~30Hz Task timer
- [x] 14 shapes:
  - Standard: Sine, Triangle, Saw Up, Saw Down, Square, S&H
  - Chaos: Lorenz X, Lorenz Y (morphable rho: 0=periodic → 28=chaotic → 40=extreme)
  - Lusona: Myombo 2, Myombo 3, Chased Chicken, Hunted Bird, Lion Stomach, Ancestor Tree
- [x] Lusona wavetables from Gerdes mirror-curve zigzag algorithm
- [x] 10 destinations: OFF, Pan, Pitch, Stress, Bloom, Decay, Mist, Heat, Drift, Density
- [x] Destination-appropriate depth scaling
- [x] 8 LFO offset Params in voice engine with eff_* intermediaries
- [x] Pan LFO summing chain in mixer (receive → add → clip → pan law)

### Kuramoto Coupling (built, needs testing)
- [x] 13 veve topology adjacency matrices (Rigaud source)
- [x] All-to-all, Legba, Carrefour, Ferraille, Ogou, Ring, Marassa, Damballah, Erzulie, Baron, Simbi, Ayizan, Gran Bwa
- [x] Coupling strength K (0-5)
- [x] Phase coupling applied every LFO tick
- [x] Weighted adjacency (Marassa 0.5 bridge, Baron 0.4 diagonals, etc.)

### Kit Manager (built, needs testing)
- [x] 8 kit slots with save/load
- [x] Tracks: voice params, patterns, lengths, flam state, levels, swing, groove, LFO state, LFO globals
- [x] Backward compatible with old kits (undefined guards)
- [x] 8 outlets: voicectrl, matrixctrl, sequencer, status, flam, levels, LFO, swing/groove

### Build System
- [x] `build_patch.py` generates complete `Maud.maxpat`
- [x] Sections: TRANSPORT, VOICE ENGINES, VOICE CONTROL, SEQUENCER, FLAM, GROOVE, LFO ENGINE, KITS, MIDI INPUT
- [x] gen~ codebox embedded inline (no file path issues)

---

## Needs Testing

Run `python3 ~/Maud/build_patch.py` then open `Maud.maxpat` in Max 9.

### Critical Path
1. **Build generates without errors** — run build_patch.py
2. **Patch opens cleanly** — no overlapping sections, all controls visible
3. **Basic playback** — press play, 6 voices trigger on beat
4. **Swing at 50%** — odd steps should shuffle (triplet feel at 120bpm = ~31ms delay)
5. **Per-voice groove** — turn one voice's groove dial, hear timing shift
6. **LFO on Pan** — set voice 0: Shape=Sine, Dest=Pan, Depth=100, Rate=low → stereo sweep
7. **LFO on Pitch** — should hear pitch wobble on triggered hits
8. **Lorenz shape** — rho=28 should produce chaotic modulation, rho=5 near-periodic
9. **Lusona shapes** — complex but repeating waveshapes
10. **Kuramoto coupling** — All-to-all + K=5 → LFOs sync. Ferraille → only voices 0-2 sync.
11. **Kit save/load** — save with swing/LFO settings, load back, verify restored

### Edge Cases to Watch
- Flam sub-hits + swing delay: sub-hits should start AFTER main_delay
- LFO destination switching: old destination should zero when switching
- Kit load with old format (no swing/lfo keys): should not crash
- High coupling K with disparate LFO rates: phases shouldn't explode
- Lorenz attractor clamping: x/y should stay within ±50, z within 0-80

---

## Next Steps

### Immediate (ship-quality)
- [ ] Run build_patch.py and verify clean generation
- [ ] Test in Max 9 — fix any wiring/layout issues
- [ ] Verify gen~ compiles with all 8 new LFO Params
- [ ] Commit and push

### Short-term Enhancements
- [ ] **LFO display**: Route LFO output values to multislider or scope~ for visual feedback
- [ ] **Swing/groove UI feedback**: Show current ms offset per voice
- [ ] **LFO sync modes**: Free-running (current) vs tempo-synced (1/4, 1/8, 1/16, etc.)
- [ ] **Topology morph**: Interpolate between two veve adjacency matrices (already in veve_loader.js)
- [ ] **Per-voice LFO phase reset on trigger**: Option to reset LFO phase when voice triggers
- [ ] **Preset LFO configurations**: "Chaos", "Lusona Drift", "Pan Wash", etc.

### Medium-term
- [ ] **Euclidean sequencer mode**: bjorklund algorithm per voice (alternative to manual grid)
- [ ] **Probability per step**: Not just on/off, but weighted probability per grid cell
- [ ] **Voice mute/solo**: Quick mute buttons per voice
- [ ] **Pattern chains**: Chain multiple patterns for longer sequences (A→B→C→D)
- [ ] **MIDI CC mapping**: Map physical controllers to any param
- [ ] **Preset morphing**: Interpolate between two kits over time
- [ ] **TouchDesigner visuals**: OSC output to TD for real-time visualization (lusona + cymatics from Feedback project)
- [ ] **nn~ PERI integration**: Route PERI RAVE model output through Maud's body types

### Long-term / Exploratory
- [ ] **Macro mapping**: 4-8 macros that control multiple params simultaneously
- [ ] **Per-step pitch/velocity**: Not just on/off but pitch and velocity per step
- [ ] **Audio-rate LFO in gen~**: Move LFO evaluation into gen~ codebox for sample-accurate modulation
- [ ] **Second Lorenz attractor**: Cross-couple two chaotic systems
- [ ] **Physical controller build**: Custom hardware (see HARDWARE.md)
- [ ] **Standalone app**: Package as Max standalone for distribution

---

## File Map

| File | Role | Lines |
|------|------|-------|
| `build_patch.py` | Patch generator (Python → JSON) | ~1200 |
| `voice_engine.genexpr` | gen~ codebox source (reference) | ~170 |
| `sequencer.js` | Polymetric step sequencer | ~100 |
| `flamengine.js` | Flam + swing + groove timing hub | ~340 |
| `lfoengine.js` | LFO engine + Kuramoto coupling | ~470 |
| `voicectrl.js` | Voice parameter controller | ~170 |
| `kitmanager.js` | Kit save/load manager | ~400 |
| `Maud.maxpat` | Generated Max patch (DO NOT EDIT) | ~auto |

---

*Last updated: 2026-03-22*
