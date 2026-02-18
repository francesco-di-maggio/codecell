// peakhold.js
// Peak-hold envelope follower. Input: scalar or accel list [ax ay az].
//
// Behaviour:
//   Any movement          → fast attack charges the peak up
//   Gentle movement       → peak holds (slow passive decay only)
//   Movement stops        → hold releases, fast decay to zero
//
// INPUT:    list [ax ay az]  — linear acceleration in m/s² (gravity-compensated)
// OUTPUT 0: energy value     — mapped to outputrange
// OUTPUT 1: state            — 0=stopped, 1=moving, 2=sustained
//
// The hold gate is a Schmitt trigger (hysteresis):
//   energy rises above holdthreshold  → hold activates
//   energy falls below stopthreshold  → hold releases
//   between the two thresholds        → gate latches in its current state
// This prevents the gate from flickering when gentle motion dips between thresholds.
//
// While hold is active, the peak tracks upward on rising energy (attack rate)
// and leaks downward very slowly otherwise (release rate).
// Once hold releases, the value decays quickly to zero (stopdecay rate).
//
// State 1 vs 2 is determined by variance of recent energy — sustained smooth
// motion has low variance; active/changing motion has high variance.
//
// MESSAGES:
//   attack <ms>               — how fast the peak charges up on rising energy
//   release <ms>              — how slowly the peak leaks down while hold is active
//   stopdecay <ms>            — how fast the value falls to zero once stopped
//   stopthreshold <float>     — energy level below which hold releases (lower edge of hysteresis band)
//   holdthreshold <float>     — energy level above which hold activates (upper edge)
//   sustainthreshold <float>  — variance below which state = 2 (sustained)
//   sustainwindow <int>       — number of recent samples used to compute variance
//   scale <float>             — multiplier applied before output clamp
//   outputrange <min> <max>   — maps 0–1 to this range
//   noisefloor <float>        — subtracted from magnitude before processing
//   calibrate                 — capture current magnitude as noise floor
//   print                     — print current state to Max console

inlets = 1;
outlets = 2;

var noiseFloor    = 0.0;
var attackTime    = 800;
var releaseTime   = 4000;
var stopDecayTime = 300;
var stopThreshold = 0.05;
var holdThreshold = 0.1;
var sustainThreshold = 0.03;
var sustainWindow = 50;
var energyScale   = 0.75;
var outputMin     = 0;
var outputMax     = 1;

var smoothValue      = 0;
var lastTime         = null;
var energyBuffer     = [];
var currentMagnitude = 0;
var inHold           = false;

function list() {
    var a = arrayfromargs(arguments);
    if (a.length < 3) return;

    var now = Date.now();
    var dt = (lastTime !== null) ? (now - lastTime) / 1000.0 : 0.01;
    lastTime = now;
    if (dt > 0.5) dt = 0.01;

    var ax = a[0], ay = a[1], az = a[2];
    var magnitude = Math.sqrt(ax*ax + ay*ay + az*az);
    var energy = Math.max(0, magnitude - noiseFloor);
    currentMagnitude = magnitude;

    energyBuffer.push(energy);
    if (energyBuffer.length > sustainWindow) energyBuffer.shift();

    // Schmitt trigger: latch hold on above holdThreshold, release below stopThreshold
    if      (energy >= holdThreshold) inHold = true;
    else if (energy  < stopThreshold) inHold = false;

    var state;
    if (!inHold) {
        var k = 1 - Math.exp(-dt / (stopDecayTime / 1000.0));
        smoothValue -= smoothValue * k;
        state = 0;
    } else {
        if (energy > smoothValue) {
            var k = 1 - Math.exp(-dt / (attackTime / 1000.0));
            smoothValue += (energy - smoothValue) * k;
        } else {
            var k = 1 - Math.exp(-dt / (releaseTime / 1000.0));
            smoothValue -= smoothValue * k;
        }
        state = (bufferVariance() < sustainThreshold) ? 2 : 1;
    }

    if (smoothValue < 0) smoothValue = 0;

    var output = Math.min(1, smoothValue * energyScale) * (outputMax - outputMin) + outputMin;
    outlet(1, state);
    outlet(0, output);
}

function bufferVariance() {
    var n = energyBuffer.length;
    if (n < 2) return 0;
    var mean = 0;
    for (var i = 0; i < n; i++) mean += energyBuffer[i];
    mean /= n;
    var v = 0;
    for (var i = 0; i < n; i++) { var d = energyBuffer[i] - mean; v += d * d; }
    return v / n;
}

function noisefloor(v)      { noiseFloor      = Math.max(0, v); }
function attack(v)          { attackTime      = Math.max(1, v); }
function release(v)         { releaseTime     = Math.max(1, v); }
function stopdecay(v)       { stopDecayTime   = Math.max(1, v); }
function stopthreshold(v)   { stopThreshold   = Math.max(0, v); }
function holdthreshold(v)   { holdThreshold   = Math.max(0, v); }
function sustainthreshold(v){ sustainThreshold = Math.max(0, v); }
function sustainwindow(v)   { sustainWindow   = Math.max(2, v) | 0; }
function scale(v)           { energyScale     = Math.max(0, v); }
function outputrange(a, b)  { outputMin = a; outputMax = b; }

function calibrate() {
    noiseFloor = currentMagnitude;
    post("noisefloor set to " + noiseFloor.toFixed(3) + "\n");
}

function print() {
    post("--- peakhold.js ---\n");
    post("attack:           " + attackTime    + " ms\n");
    post("release:          " + releaseTime   + " ms\n");
    post("stopdecay:        " + stopDecayTime + " ms\n");
    post("stopthreshold:    " + stopThreshold.toFixed(3) + "\n");
    post("holdthreshold:    " + holdThreshold.toFixed(3) + "\n");
    post("sustainthreshold: " + sustainThreshold.toFixed(3) + "\n");
    post("sustainwindow:    " + sustainWindow + " samples\n");
    post("scale:            " + energyScale   + "\n");
    post("outputrange:      " + outputMin + " " + outputMax + "\n");
    post("noisefloor:       " + noiseFloor.toFixed(3) + "\n");
    post("hold active:      " + inHold + "\n");
    post("energy:           " + smoothValue.toFixed(3) + "\n");
    post("variance:         " + bufferVariance().toFixed(4) + "\n");
}
