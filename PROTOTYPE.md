# Maud — Prototype Build Spec

> Daisy Seed + Nutube + Spring Tank + Resonant Plate + Contact Mic Feedback
> Target BOM: ~$150-200 | Full stack: digital + analog + acoustic

---

## The Thesis

Maud's software engine (6-voice KS + Kuramoto-coupled LFOs + polymetric sequencer) exports directly to Daisy Seed via `oopsy`. The analog and acoustic stages after the DAC are what make it un-clonable. This prototype proves the full stack in a playable box.

```
┌─────────────────────────────────────────────────────────────────────┐
│                        SIGNAL FLOW                                  │
│                                                                     │
│  Daisy Seed (gen~ engine)                                           │
│       │                                                             │
│       ▼                                                             │
│  DAC out (stereo)                                                   │
│       │                                                             │
│       ├──────────► Main Out (1/4" stereo jack)                      │
│       │                                                             │
│       ▼                                                             │
│  Nutube 6P1 (tube saturation stage)                                 │
│       │                                                             │
│       ├──────────► Spring Tank Driver (LM386)                       │
│       │                 │                                           │
│       │                 ▼                                           │
│       │            Spring Tank (Accutronics)                        │
│       │                 │                                           │
│       │                 ▼                                           │
│       │            Spring Recovery (TL072)                          │
│       │                 │                                           │
│       ▼                 ▼                                           │
│  Exciter Driver ──► Exciter Transducer                              │
│                     (mounted on metal plate)                        │
│                          │                                          │
│                     [PHYSICAL RESONANCE]                             │
│                          │                                          │
│                     Contact Mic (piezo)                              │
│                          │                                          │
│                          ▼                                          │
│                     Preamp (electret/piezo buffer)                   │
│                          │                                          │
│                          ▼                                          │
│                     ADC in → Daisy Seed                              │
│                     (feedback recapture into gen~ input)             │
│                                                                     │
└─────────────────────────────────────────────────────────────────────┘
```

---

## Bill of Materials

### DSP Core

| Part | Spec | Qty | Cost | Source |
|------|------|-----|------|--------|
| Daisy Seed | STM32H750, 480MHz, 64MB SDRAM, stereo codec | 1 | $30 | [Electrosmith](https://www.electro-smith.com/daisy/daisy) |
| Pin headers | 2x20 for Daisy Seed | 1 | $2 | Mouser |
| SD card (optional) | For sample storage / preset save | 1 | $5 | Amazon |

### Analog Saturation Stage

| Part | Spec | Qty | Cost | Source |
|------|------|-----|------|--------|
| Korg Nutube 6P1 | Dual triode vacuum tube, 12V, low power | 1 | $40 | [Korg](https://www.korg.com/us/products/dj/nutube_6p1/) / Mouser |
| Nutube socket board | Breakout PCB for 6P1 | 1 | $8 | Korg / AliExpress |
| Coupling caps | 1uF film caps (input/output AC coupling) | 4 | $2 | Mouser |
| Bias resistors | 1M, 100K, 10K for tube biasing | 6 | $1 | Mouser |

### Spring Reverb

| Part | Spec | Qty | Cost | Source |
|------|------|-----|------|--------|
| Accutronics spring tank | 2-spring, medium decay (~1.5s), type 4 | 1 | $15 | [Antique Electronic Supply](https://www.tubesandmore.com) |
| LM386 | Spring driver amp | 1 | $1 | Mouser |
| TL072 | Spring recovery preamp (low noise dual op-amp) | 1 | $1 | Mouser |
| Resistors + caps | Driver/recovery circuit passives | lot | $3 | Mouser |

### Resonant Body

| Part | Spec | Qty | Cost | Source |
|------|------|-----|------|--------|
| Dayton DAEX25FHE | 25mm exciter transducer, 20W, 4 ohm | 1 | $12 | [Parts Express](https://www.parts-express.com) |
| Exciter amp | PAM8403 or TPA3116 class-D mini amp board | 1 | $5 | AliExpress |
| Steel plate | 150x100x1.5mm mild steel (resonant surface) | 1 | $5 | Metal supplier / eBay |
| Piezo contact mic | 27mm brass piezo disc | 2 | $1 | AliExpress |
| Piezo preamp | JFET buffer (2N5457 + resistors) or Klon-style buffer | 1 | $3 | DIY |

### Interface (Minimal Prototype)

| Part | Spec | Qty | Cost | Source |
|------|------|-----|------|--------|
| Rotary encoders | Bourns PEC11R, with push switch | 8 | $16 | Mouser |
| Encoder knobs | Aluminum, 15mm, D-shaft | 8 | $8 | AliExpress |
| Tactile buttons | 6mm through-hole (sequencer steps) | 16 | $3 | Mouser |
| LEDs | 3mm diffused, 6 colors (voice indicators) | 6 | $1 | Mouser |
| OLED display | 0.96" 128x64, SSD1306, I2C | 1 | $5 | AliExpress |

### Power + I/O

| Part | Spec | Qty | Cost | Source |
|------|------|-----|------|--------|
| DC barrel jack | 2.1mm, panel mount | 1 | $1 | Mouser |
| 12V DC adapter | 2A, regulated (powers Nutube + amps) | 1 | $8 | Amazon |
| 5V regulator | LM7805 or buck converter (Daisy power) | 1 | $2 | Mouser |
| 1/4" stereo jack | Switchcraft 112BX or Neutrik NMJ6HCD2 | 2 | $6 | Mouser |
| MIDI DIN jack | 5-pin DIN, panel mount | 1 | $2 | Mouser |
| USB-C jack | Panel mount (firmware update + MIDI) | 1 | $3 | AliExpress |

### Enclosure

| Part | Spec | Qty | Cost | Source |
|------|------|-----|------|--------|
| Aluminum enclosure | Hammond 1590XX (145x121x39mm) or similar | 1 | $25 | Mouser |
| Rubber feet | Self-adhesive, 10mm | 4 | $2 | Amazon |
| Standoffs + screws | M3, assorted lengths | lot | $3 | Mouser |

### **Total BOM: ~$150-200**

---

## Enclosure Layout (Top View)

```
┌──────────────────────────────────────────────────┐
│                                                  │
│  [OLED]     [ENC] [ENC] [ENC] [ENC]  [ENC]     │
│  128x64     PITCH DECAY STRESS BLOOM  MIST      │
│                                                  │
│  [ENC] [ENC] [ENC]                              │
│  SWING  K    SHAPE    ○ ○ ○ ○ ○ ○  (voice LEDs) │
│                                                  │
│  [●][●][●][●] [●][●][●][●] [●][●][●][●] [●][●][●][●] │
│   step 1-4    step 5-8    step 9-12   step 13-16│
│                                                  │
│  ┌─────────────────────────────┐                │
│  │    RESONANT PLATE           │  (visible      │
│  │    (steel / ceramic)        │   through       │
│  │    + exciter underneath     │   cutout or     │
│  │    + contact mic            │   mesh window)  │
│  └─────────────────────────────┘                │
│                                                  │
└──────────────────────────────────────────────────┘

Rear panel:
[USB-C] [MIDI DIN] [OUT L] [OUT R] [DC 12V]
```

---

## Build Phases

### Phase 1: DSP Only (~$35, 1 day)

Daisy Seed on a breadboard. Export gen~ via oopsy. Verify 6 voices trigger, sequencer runs, flam works. Audio out via Daisy's onboard codec to headphones.

**Test**: All 6 voices at 48kHz. Check CPU usage. If >85%, optimize gen~ code (reduce delay lengths, simplify body models).

### Phase 2: Add Analog Stage (~$65 cumulative, 2-3 days)

Add Nutube saturation circuit on breadboard. Wire DAC → Nutube → output. Compare dry vs tube-colored signal.

Add spring tank: LM386 driver → spring → TL072 recovery → mixer. Test send amount (dry/wet balance).

**Test**: Play pattern through tube + spring. Should feel thicker, less digital. Spring should add chaos to transients.

### Phase 3: Add Resonant Body (~$85 cumulative, 1-2 days)

Mount exciter on steel plate. Wire exciter amp to Nutube output (or parallel send). Attach contact mic + preamp. Wire contact mic → Daisy ADC input.

In gen~: add an input that mixes recaptured signal into the feedback network. Start with very low gain (0.05) and increase. The plate's resonance becomes part of the voice.

**Test**: Tap the plate physically → sound changes. Different plates → different character. This is the moat working.

### Phase 4: Interface + Enclosure (~$150-200 cumulative, 3-5 days)

Solder encoders, buttons, LEDs, OLED to perfboard or custom PCB. Mount everything in enclosure. Wire power distribution (12V → 5V regulator → Daisy, 12V direct → Nutube + amps).

**Test**: Play a full session. All controls responsive. No hum, no ground loops. Spring doesn't rattle loose. Plate resonance is audible and controllable.

---

## Firmware: gen~ to Daisy via oopsy

```bash
# Install oopsy (Electrosmith's gen~ → Daisy toolchain)
# In Max: gen~ patcher → Export Code → oopsy target

# Key constraints for Daisy:
# - 48kHz sample rate (96kHz possible but halves voice count)
# - ~480MHz CPU budget across all voices
# - Each KS voice with body model ≈ 12-15% CPU
# - 6 voices = ~75-90% CPU (tight but viable)
# - LFO engine runs in JS on laptop, NOT on Daisy
#   → Replace with C timer interrupt on Daisy firmware
# - Sequencer, flam timing → C code on Daisy (not Max JS)

# What exports via oopsy:
# - gen~ codebox (voice_engine.genexpr equivalent)
# - Param mapping to hardware controls
# - Audio I/O routing

# What needs manual porting:
# - sequencer.js → C struct + timer
# - flamengine.js → C with microsecond timing
# - lfoengine.js → C with Kuramoto math
# - kitmanager.js → SD card save/load
```

---

## Who Can Build This

### Option 1: Hire a Hardware Builder Directly

**Best platforms for finding builders:**

| Platform | Who's There | How It Works | Typical Cost |
|----------|-------------|--------------|-------------|
| **Modular Grid / Muffwiggler forums** | Eurorack DIY builders, many do commission work | Post in "Wanted / Services" section. Describe the project. Builders reply. | $500-2000 for a one-off prototype (labor only, you supply BOM) |
| **r/synthdiy (Reddit)** | DIY synth builders, some professional | Post project brief, ask for DMs from builders. Check post history for quality. | $400-1500 labor |
| **Tindie** | Makers who sell custom electronics | Browse audio/synth category. Contact sellers directly for custom work. | $300-1000 for assembly + enclosure |
| **PCBWay / JLCPCB (assembly service)** | Factory PCB fabrication + SMD assembly | Design PCB in KiCad. Upload. They fabricate + populate. You do final assembly. | $50-150 per board (5 min order), 1-2 week turnaround |
| **Fiverr / Upwork** | Freelance electronics engineers | Search "embedded audio" or "STM32 firmware." Interview carefully. | $30-80/hr, varies wildly in quality |

### Option 2: Specialist Firms

| Firm / Type | What They Do | Where | Cost Range |
|-------------|--------------|-------|-----------|
| **Bela custom projects** | Bela team does commission instruments. Sensor integration experts. | London, UK | $3000-15000 for a complete custom instrument |
| **Electrosmith custom** | Daisy creators. Can advise or build Daisy-based products. | NYC, USA | Email for quote. Likely $2000-8000 for prototype. |
| **Synthrotek** | Eurorack kit company. Does contract assembly. | Portland, OR, USA | $500-3000 depending on complexity |
| **Befaco** | Open-source Eurorack. Contract builds in Barcelona. | Barcelona, Spain | $1000-5000 |
| **Local hackerspaces / makerspaces** | CNC, laser cutting, soldering stations, community expertise. | Everywhere | $0-500 (membership + materials). Best for enclosure + assembly help. |

### Option 3: Split the Work

Most efficient approach — you don't need ONE person to do everything:

| Task | Who | Cost | Time |
|------|-----|------|------|
| **PCB design** (KiCad layout from schematic) | Freelance EE on Upwork/Fiverr | $200-500 | 1-2 weeks |
| **PCB fabrication + SMD assembly** | JLCPCB or PCBWay | $50-150 (5 boards) | 1-2 weeks |
| **Firmware porting** (gen~ → Daisy C++ + sequencer/LFO) | Embedded audio freelancer (Muffwiggler, Upwork) | $500-2000 | 2-4 weeks |
| **Enclosure** (CNC aluminum or laser-cut acrylic) | PCBWay CNC service, or Ponoko, or local makerspace | $50-200 | 1 week |
| **Final assembly** (soldering, wiring, testing) | You, or local makerspace member | $0-300 | 1-2 days |
| **Analog circuit build** (Nutube + spring + exciter) | Synth DIY builder from Muffwiggler/Reddit | $200-500 | 1 week |

**Total for split approach: $1000-3500** for a fully functional prototype.

### Option 4: Africa-Based Manufacturing (for production)

| Resource | Where | What |
|----------|-------|------|
| **Gearbox (Nairobi)** | Kenya | Hardware incubator + makerspace. CNC, 3D printing, PCB prototyping. Community of EE students and hardware founders. |
| **CcHUB (Lagos)** | Nigeria | Innovation hub with prototyping lab. Connections to hardware engineers. |
| **iHub (Nairobi)** | Kenya | Tech hub with maker facilities. |
| **Shenzhen direct** | China | For production runs (50+ units). Full turnkey: PCB + assembly + enclosure + packaging. $30-80/unit at 100 qty. |

### Realistic Budget Tiers

| Tier | What You Get | Total Cost |
|------|-------------|-----------|
| **DIY Breadboard** | Daisy + analog on breadboard, no enclosure, laptop sequencer | $150-200 |
| **DIY Prototype** | Custom PCB, enclosure, all features, built by you | $300-500 |
| **Commissioned Prototype** | Someone else builds it from your design | $1000-3500 |
| **Production-Ready Prototype** | Professional EE review, tested PCB, firmware polished | $3000-8000 |
| **Small Batch (10 units)** | Turnkey from PCBWay/Shenzhen + manual assembly | $5000-12000 |

---

## Hiring Checklist

When talking to a builder, send them:

1. **This document** (PROTOTYPE.md) — full signal flow and BOM
2. **HARDWARE.md** — context on the architecture philosophy
3. **STATUS.md** — what the software does
4. **A sound demo** — record Maud output from Max. This sells the project better than any spec sheet.
5. **gen~ export** — show that the DSP core exports to Daisy via oopsy

Questions to ask a potential builder:
- Have you worked with Daisy Seed / STM32H7 before?
- Have you built analog audio circuits (tube/spring/transformer)?
- Can you do enclosure fabrication or do I need a separate vendor?
- What's your turnaround for a one-off prototype?
- Do you do firmware, or just hardware?

---

## Next Actions

1. [ ] Export gen~ voice engine via oopsy → verify it runs on Daisy Seed
2. [ ] Record a 2-minute sound demo of Maud in Max (for sending to builders)
3. [ ] Breadboard the Nutube saturation circuit, test with Daisy output
4. [ ] Breadboard the spring tank send/return, test feedback character
5. [ ] Post project brief on Muffwiggler + r/synthdiy + Modular Grid
6. [ ] Get PCB designed (KiCad) for the analog stage
7. [ ] Order 5x prototype PCBs from JLCPCB
8. [ ] Source enclosure (Hammond box for prototype, custom CNC for v2)
9. [ ] Assemble first complete prototype
10. [ ] Play it live

---

*Last updated: 2026-03-22*
