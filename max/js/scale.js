/*
 * scale.js
 * Value Scaler with Live Calibration
 *
 * Maps any continuous input value to a configurable output range (default -1 to 1).
 * Supports live calibration: move through your gesture range while calibrating
 * to automatically set the input bounds.
 *
 * Inlet 0:  float/int — input value (angle, acceleration, etc.)
 * Outlet 0: float     — scaled output
 *
 * Messages:
 *   start             — begin calibration (resets to ±180° default, tracks min/max)
 *   stop              — lock in calibrated range
 *   inputrange <min> <max>  — set input range manually
 *   outputrange <min> <max> — set output range (default -1 1)
 *   print             — print current ranges to Max console
 */

inlets = 1;
outlets = 1;
setinletassist(0, "float/int: input value");
setoutletassist(0, "float: scaled output");

var is_calibrating = 0;
var last_input = 0.0;

var cal_min = 0.0;
var cal_max = 0.0;

var input_min  = -180.0;
var input_max  =  180.0;
var output_min =   -1.0;
var output_max =    1.0;

function start() {
    input_min = -180.0;
    input_max  =  180.0;
    is_calibrating = 1;
    cal_min = last_input;
    cal_max = last_input;
}

function stop() {
    is_calibrating = 0;
}

function inputrange(mn, mx) {
    if (arguments.length >= 2) { input_min = mn; input_max = mx; }
}

function outputrange(mn, mx) {
    if (arguments.length >= 2) { output_min = mn; output_max = mx; }
}

function msg_int(v)   { msg_float(v); }
function msg_float(v) {
    last_input = v;

    if (is_calibrating) {
        if (v < cal_min) { cal_min = v; input_min = cal_min; }
        if (v > cal_max) { cal_max = v; input_max = cal_max; }
    }

    var range = input_max - input_min;
    var norm  = (range === 0) ? 0.5 : (v - input_min) / range;
    if (norm < 0.0) norm = 0.0;
    if (norm > 1.0) norm = 1.0;

    outlet(0, output_min + (output_max - output_min) * norm);
}

function print() {
    post("input:  [" + input_min + ", " + input_max + "]\n");
    post("output: [" + output_min + ", " + output_max + "]\n");
    post("calibrating: " + is_calibrating + "\n");
}
