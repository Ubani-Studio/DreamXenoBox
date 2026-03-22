# DREAM XENO BOX — Effects Module Design (Parked)

> Build these AFTER Stage 3 (6 voices + sequencer) is playable.
> Per-voice fracture/halo/memory already exist in the gen~ voice engine.
> These are GLOBAL bus effects only.

---

## Priority Order

### 1. Bus Saturation / Glue (half day)

Master density + cohesion. Global version of per-voice fracture.

- **DSP**: Pre-emphasis EQ → soft-clip (tanh or asymmetric polynomial) → de-emphasis EQ → dry/wet mix
- **Key**: Preserve transient attack. Pre-emphasis boosts mids before saturation, de-emphasis restores balance after. This gives midrange authority without destroying the hit.
- **Controls**: Drive (0-1), Weight (pre-emphasis frequency), Mix (0-1)
- **Where**: gen~ codebox on master bus, stereo
- **Risk**: Too much drive = mush. Bound drive range. Keep mix at 30-60% sweet spot.

### 2. Void Delay (half day)

Dark filtered dub delay. Not clean studio delay.

- **DSP**: `tapin~/tapout~` or gen~ Delay. One-pole LP in feedback loop (darkness increases with repeats). Optional slight pitch drift in feedback for instability.
- **Controls**: Time (ms or BPM-synced), Feedback (0-0.9 bounded), Darkness (LP cutoff in feedback), Mix (0-1)
- **Where**: Max-side `tapin~/tapout~` is simpler and proven. Send bus from mixer.
- **Risk**: Feedback runaway. Hard-bound feedback < 0.95. Add soft limiter in loop.

### 3. Matter Dispersion (1-2 days)

Dynamic dispersive materializer. The genuinely novel one.

- **DSP**: 4-8 cascaded allpass filters with frequency-dependent group delay. Short delay times (0.1-5ms per stage). Coefficient modulation for material character.
- **Concept**: Different frequencies arrive at different times → ceramic/chrome/glass/bone character. Like the sound passed through a strange material.
- **Controls**: Density (number of active stages), Material (allpass coefficient range), Tightness (delay time scaling), Mix (0-1)
- **Where**: gen~ codebox. Per-voice optional, global recommended first.
- **Risk**: Phase cancellation at certain settings. Allpass filters are inherently stable (no runaway). Keep delay times short for percussion.
- **gen~ building blocks**: `History` for allpass state, no `Delay` needed if times < 1 sample (use coefficient-based allpass: `y = coeff * (x - y_prev) + x_prev`)

---

## Parked for Later (Post-v1)

These overlap with existing per-voice DSP. Revisit only if per-voice versions prove insufficient after playing the sequencer.

### 4. Scar Drive (overlaps per-voice fracture/wavefold)

Structural resonant distortion. Different from bus saturation in that it adds resonant ringing after-character. Could be useful as a send effect for specific voices.

- If needed: Add a short resonant bandpass (2-pole) after the wavefold stage, tuned to body frequency. This gives the "scarred ringing" without a separate module.
- Or: Enhance the existing per-voice fracture stage with a post-fold resonant peak controlled by pressure state.

### 5. Ghost Memory Filter (overlaps per-voice pressure/heat/fatigue state)

Stateful spectral fatigue. The per-voice memory system already does this at voice level.

- If needed as global: Track spectral energy in 3-4 bands on the master bus. Apply fatigue-style damping (repeated energy in a band → reduce that band over time). Silence restores. This would make the WHOLE MIX age, not just individual voices.
- Implementation: 4 parallel bandpass energy followers → 4 corresponding band attenuators with slow attack / slower release.

### 6. Swarm Halo (overlaps per-voice noise veil halo)

Micro-event tail generator. The per-voice halo already adds atmospheric tail per hit.

- If needed as global: Replace noise veil approach with micro-granular spectral events. 8-16 very short grains (0.5-3ms) with randomized pitch/pan, triggered by transient detection on the bus. Feels like orbiting micro-resonances rather than filtered noise.
- Risk: CPU with many grains. Keep grain count low. This is the most experimental of all modules.

---

## Effect Routing Architecture (When Ready)

```
Voice 1 (Mass)  ──┐
Voice 2 (Vein)  ──┤
Voice 3 (Shard) ──┤──→ MIXER (level/pan/send per voice)
Voice 4 (Husk)  ──┤         │
Voice 5 (Fault) ──┤         ├── Send A → Void Delay → return
Voice 6 (Halo)  ──┘         ├── Send B → Matter Dispersion → return
                             │
                        Dry + Returns
                             │
                        Bus Saturation / Glue
                             │
                        Master Output → dac~
```

- Per-voice FX (fracture, halo, memory) stay INSIDE gen~ voice engine
- Global FX live on send buses in Max
- Bus saturation is insert on master (always on, mix control)
- Each voice gets independent send levels to Void Delay and Matter Dispersion

---

## Hardware Portability Notes

- All gen~ effects are RNBO-compatible
- Allpass cascades (Matter Dispersion) are very efficient on embedded
- tapin~/tapout~ delay would need gen~ Delay rewrite for RNBO export
- Bus saturation is trivially portable (just math)
- Keep total effect CPU < 15% of budget (voices + sequencer get the rest)

---

## Prompt Archive

The full ChatGPT effects prompt and analysis is preserved below for reference when building these modules.

### Original 5-Module Design Brief

1. **Scar Drive** — Structural resonant distortion (not generic overdrive). Density, pressure, midrange authority. Resonant after-character without becoming reverb.
2. **Ghost Memory Filter** — Stateful spectral fatigue/hysteresis. Remembers recent spectral energy, changes damping/brightness over repetition. Cools on silence.
3. **Fracture Resonator** — Pressure-sensitive resonant body splitter. Focused resonance that bifurcates under pressure into multiple peaks/modes.
4. **Swarm Halo** — Constrained micro-event tail generator. Spectral ghosts, insect-metal tails, orbiting micro-resonances. Living aura, not shimmer.
5. **Matter Dispersion** — Dynamic dispersive materializer. Phase/time dispersion for ceramic/chrome/glass/bone character. Tight enough for rhythm.

### Evaluation Notes

- Scar Drive, Ghost Memory Filter, and Swarm Halo overlap heavily with existing per-voice gen~ DSP (fracture, memory state, noise veil)
- Fracture Resonator is interesting but complex — a dynamic resonator bank that splits under pressure. Park for v2.
- Matter Dispersion is the most genuinely novel addition — allpass dispersion adds character nothing else in the voice provides
- Build sequencer first, play patterns, THEN decide what's missing from the sound
