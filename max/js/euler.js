/*
 * euler.js
 * Quaternion to Euler Angles
 *
 * Converts quaternion (w x y z) to Euler angles (yaw pitch roll) in degrees.
 * Continuously unwraps yaw and roll to prevent ±180° boundary jumps.
 * Optional wrapping clamps output to ±180° — useful for direct display.
 * For gesture mapping, leave wrapping off and feed into clamp.js instead.
 *
 * Feed with output from quat.js to get reference-frame-relative Euler angles.
 *
 * Inlet 0:  list w x y z — quaternion (from quat.js or /quat OSC)
 * Outlet 0: list yaw pitch roll — Euler angles in degrees
 *
 * Messages:
 *   bang              — reset unwrap history (call after pause or reference frame reset)
 *   setwrapping <0|1> — wrap output to ±180° (default 0 = off, accumulates freely)
 *   print             — print current state to Max console
 */

inlets = 1;
outlets = 1;
setinletassist(0, "list: w x y z (quaternion)");
setoutletassist(0, "list: yaw pitch roll (degrees)");

var PI = Math.PI;
var TWO_PI = 2.0 * PI;
var RAD_TO_DEG = 180.0 / PI;

var prev_roll  = 0.0;
var prev_pitch = 0.0;
var prev_yaw   = 0.0;

var enable_wrapping = 0;

function loadbang() {
    prev_roll = 0.0; prev_pitch = 0.0; prev_yaw = 0.0;
}

function bang() {
    // Wrap history back into ±π so unwrapping restarts cleanly from current pose
    while (prev_roll  >  PI) prev_roll  -= TWO_PI;
    while (prev_roll  < -PI) prev_roll  += TWO_PI;
    while (prev_pitch >  PI) prev_pitch -= TWO_PI;
    while (prev_pitch < -PI) prev_pitch += TWO_PI;
    while (prev_yaw   >  PI) prev_yaw   -= TWO_PI;
    while (prev_yaw   < -PI) prev_yaw   += TWO_PI;
}

function setwrapping(v) { enable_wrapping = v ? 1 : 0; }

function list() {
    if (arguments.length < 4) return;

    var qw = arguments[0], sqw = qw*qw;
    var qx = arguments[1], sqx = qx*qx;
    var qy = arguments[2], sqy = qy*qy;
    var qz = arguments[3], sqz = qz*qz;

    var denom = sqw + sqx + sqy + sqz;
    if (denom === 0) return;

    var roll  = Math.atan2(2.0*(qx*qy + qz*qw), sqx - sqy - sqz + sqw);
    var sinp  = -2.0*(qx*qz - qy*qw) / denom;
    sinp = sinp > 1.0 ? 1.0 : (sinp < -1.0 ? -1.0 : sinp);
    var pitch = Math.asin(sinp);
    var yaw   = Math.atan2(2.0*(qy*qz + qx*qw), -sqx - sqy + sqz + sqw);

    // Unwrap — correct for ±π jumps from atan2
    if (Math.abs(roll  - prev_roll)  > PI) roll  -= Math.round((roll  - prev_roll)  / TWO_PI) * TWO_PI;
    if (Math.abs(pitch - prev_pitch) > PI) pitch -= Math.round((pitch - prev_pitch) / TWO_PI) * TWO_PI;
    if (Math.abs(yaw   - prev_yaw)   > PI) yaw   -= Math.round((yaw   - prev_yaw)   / TWO_PI) * TWO_PI;

    prev_roll = roll; prev_pitch = pitch; prev_yaw = yaw;

    var y = yaw   * RAD_TO_DEG;
    var p = pitch * RAD_TO_DEG;
    var r = roll  * RAD_TO_DEG;

    if (enable_wrapping) {
        // Modulo wrap to ±180°
        var period = 360.0;
        y = ((y + 180.0) % period + period) % period - 180.0;
        r = ((r + 180.0) % period + period) % period - 180.0;
    }

    outlet(0, [y, p, r]);
}

function print() {
    post("wrapping: " + enable_wrapping + "\n");
    post("yaw="   + (prev_yaw   * RAD_TO_DEG).toFixed(1) + "\n");
    post("pitch=" + (prev_pitch * RAD_TO_DEG).toFixed(1) + "\n");
    post("roll="  + (prev_roll  * RAD_TO_DEG).toFixed(1) + "\n");
}
