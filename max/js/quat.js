/*
 * quat.js
 * Quaternion Reference Frame Reset
 *
 * Receives quaternion (w x y z) from inlet 0.
 * Bang resets the reference frame to the current orientation.
 * Outputs relative quaternion (w x y z) as a list.
 *
 * Inlet 0:  list w x y z  — quaternion from /quat OSC message
 * Outlet 0: list w x y z  — quaternion relative to reference frame
 *
 * Messages:
 *   bang  — set current orientation as new reference (zero pose)
 *   print — print current state to Max console
 */

inlets = 1;
outlets = 1;
setinletassist(0, "list: w x y z (quaternion)");
setoutletassist(0, "list: w x y z (relative quaternion)");

// Current quaternion from sensor
var qw = 1.0, qx = 0.0, qy = 0.0, qz = 0.0;

// Reference quaternion conjugate
var qw0 = 1.0, qx0 = 0.0, qy0 = 0.0, qz0 = 0.0;

function loadbang() {
    qw = 1.0; qx = 0.0; qy = 0.0; qz = 0.0;
    qw0 = 1.0; qx0 = 0.0; qy0 = 0.0; qz0 = 0.0;
}

function bang() {
    var norm_sq = qw*qw + qx*qx + qy*qy + qz*qz;
    if (norm_sq === 0) return;
    var inv = 1.0 / Math.sqrt(norm_sq);
    // Store conjugate of current quaternion as reference
    qw0 =  qw * inv;
    qx0 = -qx * inv;
    qy0 = -qy * inv;
    qz0 = -qz * inv;
}

function list() {
    if (arguments.length < 4) return;

    qw = arguments[0];
    qx = arguments[1];
    qy = arguments[2];
    qz = arguments[3];

    // Normalize input
    var norm_sq = qw*qw + qx*qx + qy*qy + qz*qz;
    if (norm_sq === 0) return;
    var inv = 1.0 / Math.sqrt(norm_sq);
    qw *= inv; qx *= inv; qy *= inv; qz *= inv;

    // q_rel = q0_conjugate * q_current
    var rw = qw0*qw - qx0*qx - qy0*qy - qz0*qz;
    var rx = qw0*qx + qx0*qw + qy0*qz - qz0*qy;
    var ry = qw0*qy - qx0*qz + qy0*qw + qz0*qx;
    var rz = qw0*qz + qx0*qy - qy0*qx + qz0*qw;

    // Normalize output
    norm_sq = rw*rw + rx*rx + ry*ry + rz*rz;
    if (norm_sq === 0) return;
    inv = 1.0 / Math.sqrt(norm_sq);
    rw *= inv; rx *= inv; ry *= inv; rz *= inv;

    outlet(0, [rw, rx, ry, rz]);
}

function print() {
    post("quat: w=" + qw + " x=" + qx + " y=" + qy + " z=" + qz + "\n");
    post("ref:  w=" + qw0 + " x=" + qx0 + " y=" + qy0 + " z=" + qz0 + "\n");
}
