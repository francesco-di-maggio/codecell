/*
 * clamp.js
 * Directional Clamp for Continuous Angle Streams
 *
 * Tracks incremental rotation deltas from euler.js and applies them to
 * an internal clamped state. When the boundary is hit, output holds.
 * As soon as input rotates back (any amount), output immediately follows.
 *
 * This works correctly regardless of how far euler.js has accumulated —
 * it is delta-based, not absolute-value-based.
 *
 * Accepts a single float or a list (each channel tracked independently).
 *
 * Inlet 0:  float or list — continuous angle(s) in degrees from euler.js
 * Outlet 0: float or list — clamped angle(s) in degrees
 *
 * Messages:
 *   range <degrees>    — symmetric clamp limit ±range (default 180°)
 *   bang               — reset internal state and prev to 0
 *   print              — print current state to Max console
 */

inlets = 1;
outlets = 1;
setinletassist(0, "float or list: continuous angle(s) from euler.js");
setoutletassist(0, "float or list: clamped angle(s)");

var clampRange = 180.0;

// Per-channel state
var prev  = [];   // previous raw input
var state = [];   // current clamped output

function ensureChannels(n) {
    while (prev.length < n) {
        prev.push(0.0);
        state.push(0.0);
    }
}

function applyDelta(v, ch) {
    var delta = v - prev[ch];
    prev[ch] = v;
    state[ch] = Math.max(-clampRange, Math.min(clampRange, state[ch] + delta));
    return state[ch];
}

function range(v) {
    if (arguments.length >= 1) clampRange = Math.abs(v);
}

function bang() {
    for (var i = 0; i < prev.length; i++) {
        prev[i] = 0.0;
        state[i] = 0.0;
    }
    outlet(0, 0);
}

function msg_int(v)   { msg_float(v); }
function msg_float(v) {
    ensureChannels(1);
    outlet(0, applyDelta(v, 0));
}

function list() {
    var n = arguments.length;
    ensureChannels(n);
    var out = [];
    for (var i = 0; i < n; i++) {
        out.push(applyDelta(arguments[i], i));
    }
    outlet(0, out);
}

function print() {
    post("--- clamp.js ---\n");
    post("range: ±" + clampRange + "°\n");
    for (var i = 0; i < state.length; i++) {
        post("ch" + i + " state=" + state[i].toFixed(1) + " prev=" + prev[i].toFixed(1) + "\n");
    }
}
