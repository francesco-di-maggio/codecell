/*
 * scale.js
 * Value Scaler with Live Calibration
 *
 * Maps input values to a configurable output range (default -1 to 1).
 * Accepts a single float or a list — each channel scaled independently.
 * Supports live calibration: move through your gesture range while calibrating
 * to automatically set the input bounds per channel.
 *
 * Inlet 0:  float or list — input value(s)
 * Outlet 0: float or list — scaled output value(s)
 *
 * Messages:
 *   reset                  — restore all defaults, stop calibration
 *   start                  — begin calibration (resets bounds, tracks min/max live)
 *   stop                   — lock in calibrated range
 *   inputrange <min> <max> — set input range manually (applied to all channels)
 *   outputrange <min> <max> — set output range (default -1 1)
 *   print                  — print current ranges to Max console
 */

inlets = 1;
outlets = 1;
setinletassist(0, "float or list: input value(s)");
setoutletassist(0, "float or list: scaled output value(s)");

var is_calibrating = 0;

var cal_min   = [];
var cal_max   = [];
var input_min = [];
var input_max = [];

var default_input_min = -180.0;
var default_input_max =  180.0;

var default_output_min = -1.0;
var default_output_max =  1.0;
var output_min = default_output_min;
var output_max = default_output_max;

function ensureChannels(n) {
    while (cal_min.length < n) {
        cal_min.push(0.0);
        cal_max.push(0.0);
        input_min.push(default_input_min);
        input_max.push(default_input_max);
    }
}

function scaleValue(v, ch) {
    var range = input_max[ch] - input_min[ch];
    var norm  = (range === 0) ? 0.5 : (v - input_min[ch]) / range;
    if (norm < 0.0) norm = 0.0;
    if (norm > 1.0) norm = 1.0;
    return output_min + (output_max - output_min) * norm;
}

function processChannel(v, ch) {
    if (is_calibrating) {
        if (v < cal_min[ch]) { cal_min[ch] = v; input_min[ch] = v; }
        if (v > cal_max[ch]) { cal_max[ch] = v; input_max[ch] = v; }
    }
    return scaleValue(v, ch);
}

function reset() {
    is_calibrating = 0;
    output_min = default_output_min;
    output_max = default_output_max;
    for (var i = 0; i < input_min.length; i++) {
        cal_min[i]   = 0.0;
        cal_max[i]   = 0.0;
        input_min[i] = default_input_min;
        input_max[i] = default_input_max;
    }
}

function start() {
    is_calibrating = 1;
    for (var i = 0; i < cal_min.length; i++) {
        cal_min[i]   = 0.0;
        cal_max[i]   = 0.0;
        input_min[i] = default_input_min;
        input_max[i] = default_input_max;
    }
}

function stop() {
    is_calibrating = 0;
}

function inputrange(mn, mx) {
    if (arguments.length >= 2) {
        default_input_min = mn;
        default_input_max = mx;
        for (var i = 0; i < input_min.length; i++) {
            input_min[i] = mn;
            input_max[i] = mx;
        }
    }
}

function outputrange(mn, mx) {
    if (arguments.length >= 2) {
        output_min = mn;
        output_max = mx;
    }
}

function msg_int(v) { msg_float(v); }
function msg_float(v) {
    ensureChannels(1);
    outlet(0, processChannel(v, 0));
}

function list() {
    var n = arguments.length;
    ensureChannels(n);
    var out = [];
    for (var i = 0; i < n; i++) out.push(processChannel(arguments[i], i));
    outlet(0, out);
}

function print() {
    post("--- scale.js ---\n");
    post("output: [" + output_min + ", " + output_max + "]\n");
    post("calibrating: " + is_calibrating + "\n");
    for (var i = 0; i < input_min.length; i++) {
        post("ch" + i + " input: [" + input_min[i].toFixed(2) + ", " + input_max[i].toFixed(2) + "]\n");
    }
}
