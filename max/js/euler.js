/*
 * euler.js
 * Quaternion to Euler Angles
 *
 * Converts quaternion (w x y z) to Euler angles (roll pitch yaw) in degrees.
 * Unwraps yaw and roll to prevent ±180° boundary jumps.
 * Optional wrap or foldback at a configurable range boundary.
 *
 * Feed with output from quat.js to get reference-frame-relative Euler angles.
 *
 * Inlet 0:  list w x y z — quaternion (from quat.js or /quat OSC)
 * Outlet 0: list roll pitch yaw — Euler angles in degrees
 *
 * Messages:
 *   bang              — reset unwrap history (call when resuming after pause)
 *   setrange <n>      — wrap/fold boundary in degrees (default 180)
 *   setwrapping <0|1> — enable modulo wrap at boundary (default 1)
 *   setfoldback <0|1> — enable triangle-wave foldback instead of wrap (default 0)
 *   print             — print current state to Max console
 */

inlets = 1;
outlets = 1;
setinletassist(0, "list: w x y z (quaternion)");
setoutletassist(0, "list: roll pitch yaw (degrees)");

var PI = Math.PI;
var TWO_PI = 2.0 * PI;
var RAD_TO_DEG = 180.0 / PI;

// Unwrap history (radians)
var prev_roll  = 0.0;
var prev_pitch = 0.0;
var prev_yaw   = 0.0;

// Range and mode
var default_range    = 180;
var enable_wrapping  = 1;
var enable_foldback  = 0;

function loadbang() {
    prev_roll = 0.0; prev_pitch = 0.0; prev_yaw = 0.0;
}

function bang() {
    // Wrap history back into ±π so unwrapping restarts cleanly
    while (prev_roll  >  PI) prev_roll  -= TWO_PI;
    while (prev_roll  < -PI) prev_roll  += TWO_PI;
    while (prev_pitch >  PI) prev_pitch -= TWO_PI;
    while (prev_pitch < -PI) prev_pitch += TWO_PI;
    while (prev_yaw   >  PI) prev_yaw   -= TWO_PI;
    while (prev_yaw   < -PI) prev_yaw   += TWO_PI;
}

function setrange(v)     { if (arguments.length >= 1) default_range   = Math.abs(v); }
function setwrapping(v)  { if (arguments.length >= 1) enable_wrapping  = v ? 1 : 0; }
function setfoldback(v)  { if (arguments.length >= 1) enable_foldback  = v ? 1 : 0; }

function foldback(val, range) {
    if (range <= 0) return val;
    var period = 4 * range;
    var t = ((val + range) % period + period) % period;
    return (t > 2 * range) ? (period - t - range) : (t - range);
}

function wrap(val, range) {
    if (range <= 0) return val;
    var period = 2 * range;
    return ((val + range) % period + period) % period - range;
}

function list() {
    if (arguments.length < 4) return;

    var qw = arguments[0], sqw = qw*qw;
    var qx = arguments[1], sqx = qx*qx;
    var qy = arguments[2], sqy = qy*qy;
    var qz = arguments[3], sqz = qz*qz;

    var denom = sqw + sqx + sqy + sqz;
    if (denom === 0) return;

    // Quaternion to roll/pitch/yaw (radians)
    var roll  = Math.atan2(2.0*(qx*qy + qz*qw), sqx - sqy - sqz + sqw);
    var sinp  = -2.0*(qx*qz - qy*qw) / denom;
    sinp = sinp > 1.0 ? 1.0 : (sinp < -1.0 ? -1.0 : sinp);
    var pitch = Math.asin(sinp);
    var yaw   = Math.atan2(2.0*(qy*qz + qx*qw), -sqx - sqy + sqz + sqw);

    // Unwrap to prevent ±180° jumps
    if (Math.abs(roll  - prev_roll)  > PI) roll  -= Math.round((roll  - prev_roll)  / TWO_PI) * TWO_PI;
    if (Math.abs(pitch - prev_pitch) > PI) pitch -= Math.round((pitch - prev_pitch) / TWO_PI) * TWO_PI;
    if (Math.abs(yaw   - prev_yaw)   > PI) yaw   -= Math.round((yaw   - prev_yaw)   / TWO_PI) * TWO_PI;

    prev_roll = roll; prev_pitch = pitch; prev_yaw = yaw;

    var r = roll  * RAD_TO_DEG;
    var p = pitch * RAD_TO_DEG;
    var y = yaw   * RAD_TO_DEG;

    if (enable_foldback) {
        r = foldback(r, default_range);
        y = foldback(y, default_range);
    } else if (enable_wrapping) {
        r = wrap(r, default_range);
        y = wrap(y, default_range);
    }

    outlet(0, [r, p, y]);
}

function print() {
    post("range=" + default_range + " wrapping=" + enable_wrapping + " foldback=" + enable_foldback + "\n");
    post("prev: roll=" + (prev_roll*RAD_TO_DEG).toFixed(1) + " pitch=" + (prev_pitch*RAD_TO_DEG).toFixed(1) + " yaw=" + (prev_yaw*RAD_TO_DEG).toFixed(1) + "\n");
}
