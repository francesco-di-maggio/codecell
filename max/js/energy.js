// energy.js
// RMS acceleration energy via asymmetric leaky integrator.
//
// Uses separate attack and decay time constants for independent control:
//   short attack  → snappy response to gesture onset
//   long decay    → smooth release after gesture ends
//
// This is a raw, reactive energy measure — no hold, no envelope shaping.
// Feed its output into peakhold.js for gesture-level envelope behaviour.
//
// INPUT:    list [ax ay az]  — linear acceleration in m/s² (gravity-compensated)
// OUTPUT:   RMS energy       — mapped to outputrange
//
// MESSAGES:
//   attack <ms>           — time constant for rising energy (default 50ms)
//   decay <ms>            — time constant for falling energy (default 300ms)
//   noisefloor <float>    — RMS value subtracted before output (set at rest)
//   scale <float>         — multiplier applied before output clamp
//   outputrange <min> <max>
//   calibrate             — capture current RMS as noise floor
//   print                 — print current state to Max console

inlets = 1;
outlets = 1;

var attackTime  = 200;
var decayTime   = 200;
var noiseFloor  = 0.0;
var energyScale = 1.0;
var outputMin   = 0;
var outputMax   = 1;

var smoothedSq  = 0;
var lastTime    = null;
var currentRMS  = 0;

function list() {
    var a = arrayfromargs(arguments);
    if (a.length < 3) return;

    var now = Date.now();
    var dt = (lastTime !== null) ? (now - lastTime) / 1000.0 : 0.01;
    lastTime = now;
    if (dt > 0.5) dt = 0.01;

    var ax = a[0], ay = a[1], az = a[2];
    var sq = ax*ax + ay*ay + az*az;

    // Asymmetric one-pole IIR: separate k for attack and decay
    var tau = (sq > smoothedSq) ? attackTime : decayTime;
    var k = 1 - Math.exp(-dt / (tau / 1000.0));
    smoothedSq += (sq - smoothedSq) * k;

    currentRMS = Math.sqrt(Math.max(0, smoothedSq));
    var energy = Math.max(0, currentRMS - noiseFloor);
    var output = Math.min(1, energy * energyScale) * (outputMax - outputMin) + outputMin;
    outlet(0, output);
}

function attack(v)         { attackTime  = Math.max(1, v); }
function decay(v)          { decayTime   = Math.max(1, v); }
function noisefloor(v)     { noiseFloor  = Math.max(0, v); }
function scale(v)          { energyScale = Math.max(0, v); }
function outputrange(a, b) { outputMin = a; outputMax = b; }

function calibrate() {
    noiseFloor = currentRMS;
    post("noisefloor set to " + noiseFloor.toFixed(3) + "\n");
}

function print() {
    post("--- energy.js ---\n");
    post("attack:       " + attackTime + " ms\n");
    post("decay:        " + decayTime + " ms\n");
    post("noisefloor:   " + noiseFloor.toFixed(3) + "\n");
    post("scale:        " + energyScale + "\n");
    post("outputrange:  " + outputMin + " " + outputMax + "\n");
    post("rms:          " + currentRMS.toFixed(3) + "\n");
}
