#!/usr/bin/env python3
"""Measure how badly the sequencer drifts, as a number rather than a feeling.

Records desktop audio, finds the onsets, and reports the spread of the interval
between them against what the tempo says it should be. Run it before a change
and after, and the two numbers say whether the change did anything.

    python3 tools/jitter.py --bpm 120 --div 16 --seconds 20

Why onsets and not a timer inside Max: a timer measures the scheduler's opinion
of when it fired, which is exactly the thing under suspicion. The speaker output
is the only place the truth is unambiguous.
"""
import argparse
import json
import os
import subprocess
import sys
import tempfile

import numpy as np

CAPTURE = "/mnt/e/ala-capture/Capture.exe"


def record(seconds, out_win):
    subprocess.run([CAPTURE, "rec", "--out", out_win, "--seconds", str(seconds),
                    "--desktop", "--res", "360"], check=True,
                   capture_output=True, text=True, timeout=seconds + 90)


def load_audio(path, sr=48000):
    with tempfile.TemporaryDirectory() as tmp:
        wav = os.path.join(tmp, "a.wav")
        subprocess.run(["ffmpeg", "-v", "error", "-i", path, "-ac", "1",
                        "-ar", str(sr), "-f", "wav", wav, "-y"], check=True)
        import wave
        with wave.open(wav) as w:
            raw = w.readframes(w.getnframes())
        x = np.frombuffer(raw, dtype=np.int16).astype(np.float32) / 32768.0
    return x, sr


def onsets(x, sr, hop=64):
    """Onset times from a rectified envelope. Crude on purpose: a drum machine's
    transients are loud and isolated, and a fancier detector would add its own
    timing error to the thing being measured."""
    env = np.abs(x)
    n = len(env) // hop * hop
    env = env[:n].reshape(-1, hop).max(axis=1)
    d = np.diff(env, prepend=env[0])
    d[d < 0] = 0
    if d.max() <= 0:
        return np.array([])
    thr = d.mean() + 3.0 * d.std()
    peaks, last = [], -10**9
    guard = int(0.030 * sr / hop)          # 30 ms, so one hit is not two onsets
    for i, v in enumerate(d):
        if v > thr and i - last > guard:
            peaks.append(i)
            last = i
    return np.array(peaks) * hop / sr


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--bpm", type=float, required=True)
    ap.add_argument("--div", type=float, default=16,
                    help="steps per bar: 16 for 1/16 notes")
    ap.add_argument("--seconds", type=int, default=20)
    ap.add_argument("--file", help="measure an existing recording instead")
    ap.add_argument("--label", default="run")
    a = ap.parse_args()

    if a.file:
        path = a.file
    else:
        win = r"E:\tmp\maud_jitter.mp4"
        print(f"  recording {a.seconds}s of desktop audio. Make sure Maud is "
              f"playing and nothing else is making noise.")
        record(a.seconds, win)
        path = "/mnt/e/tmp/maud_jitter.mp4"

    x, sr = load_audio(path)
    t = onsets(x, sr)
    if len(t) < 8:
        sys.exit(f"  only {len(t)} onsets found. Is it playing, and is desktop "
                 f"audio reaching the recorder?")

    step_s = 60.0 / a.bpm * (4.0 / a.div)
    iv = np.diff(t)
    # Fold every interval onto the nearest whole number of steps, so a pattern
    # with rests is measured as accurately as one with a hit on every step.
    steps = np.maximum(1, np.round(iv / step_s))
    err_ms = (iv - steps * step_s) * 1000.0
    keep = np.abs(err_ms) < step_s * 1000 * 0.45     # drop obvious mis-detections
    err_ms = err_ms[keep]

    out = {
        "label": a.label,
        "bpm": a.bpm,
        "expected_step_ms": round(step_s * 1000, 3),
        "onsets": int(len(t)),
        "intervals_used": int(len(err_ms)),
        "mean_error_ms": round(float(err_ms.mean()), 3),
        "jitter_sd_ms": round(float(err_ms.std()), 3),
        "worst_ms": round(float(np.abs(err_ms).max()), 3),
        "drift_ms_per_min": round(float(err_ms.mean()) * (60.0 / step_s), 1),
    }
    print()
    print(f"  {out['label']}: {out['onsets']} onsets, step should be "
          f"{out['expected_step_ms']} ms")
    print(f"    jitter, one standard deviation : {out['jitter_sd_ms']} ms")
    print(f"    worst single step off by       : {out['worst_ms']} ms")
    print(f"    mean error                     : {out['mean_error_ms']} ms")
    print(f"    implied drift                  : {out['drift_ms_per_min']} ms/min")
    print()
    print("  Reference: a signal vector of 64 at 48k is 1.33 ms, so anything at or")
    print("  under that is the vector floor. Above about 5 ms is audible on drums.")
    print()
    log = os.path.join(os.path.dirname(os.path.abspath(__file__)), "jitter.log.json")
    hist = json.load(open(log)) if os.path.exists(log) else []
    hist.append(out)
    json.dump(hist, open(log, "w"), indent=2)
    print(f"  appended to {os.path.relpath(log)}")


if __name__ == "__main__":
    main()
