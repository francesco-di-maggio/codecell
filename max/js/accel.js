/*
 * accel.js
 * World-Frame Acceleration Transform
 *
 * Transforms linear acceleration from the sensor's rotating frame
 * to a fixed world frame using quaternion rotation.
 * Feed with output from quat.js for reference-frame-relative world acceleration.
 *
 * Inlet 0:  list ax ay az — linear acceleration from /accel OSC  (hot)
 * Inlet 1:  list w x y z — quaternion (from quat.js outlet or /quat OSC)  (cold)
 * Outlet 0: list ax ay az — acceleration in world frame
 *
 * Messages:
 *   print — print current state to Max console
 */

inlets = 2;
outlets = 1;
setinletassist(0, "list: ax ay az (linear acceleration from /accel)");
setinletassist(1, "list: w x y z (quaternion, from quat.js)");
setoutletassist(0, "list: ax ay az (world-frame acceleration)");

// Latest quaternion
var qw = 1.0, qx = 0.0, qy = 0.0, qz = 0.0;

// Latest acceleration
var ax = 0.0, ay = 0.0, az = 0.0;

function loadbang() {
    qw = 1.0; qx = 0.0; qy = 0.0; qz = 0.0;
    ax = 0.0; ay = 0.0; az = 0.0;
}

function list() {
    if (inlet === 0) {
        // Acceleration input (hot) — rotate and output
        if (arguments.length < 3) return;
        ax = arguments[0];
        ay = arguments[1];
        az = arguments[2];

        // Rotate acceleration vector by quaternion: v' = q * v * q_conjugate
        // Using rotation matrix derived from quaternion
        var wax = (1.0 - 2.0*qy*qy - 2.0*qz*qz) * ax +
                       2.0*(qx*qy - qw*qz)        * ay +
                       2.0*(qx*qz + qw*qy)        * az;

        var way =      2.0*(qx*qy + qw*qz)        * ax +
                  (1.0 - 2.0*qx*qx - 2.0*qz*qz)  * ay +
                       2.0*(qy*qz - qw*qx)        * az;

        var waz =      2.0*(qx*qz - qw*qy)        * ax +
                       2.0*(qy*qz + qw*qx)        * ay +
                  (1.0 - 2.0*qx*qx - 2.0*qy*qy)  * az;

        outlet(0, [wax, way, waz]);

    } else if (inlet === 1) {
        // Quaternion input (cold) — store and normalize
        if (arguments.length < 4) return;
        qw = arguments[0];
        qx = arguments[1];
        qy = arguments[2];
        qz = arguments[3];

        var norm_sq = qw*qw + qx*qx + qy*qy + qz*qz;
        if (norm_sq === 0) return;
        var inv = 1.0 / Math.sqrt(norm_sq);
        qw *= inv; qx *= inv; qy *= inv; qz *= inv;
    }
}

function print() {
    post("quat: w=" + qw + " x=" + qx + " y=" + qy + " z=" + qz + "\n");
    post("accel in: ax=" + ax + " ay=" + ay + " az=" + az + "\n");
}
