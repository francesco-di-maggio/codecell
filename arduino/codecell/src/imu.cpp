/*
 * IMU Sensor (BNO085)
 *
 * Reads rotation and acceleration from the BNO085 via I2C using the Adafruit library.
 * Reports are re-enabled automatically if the sensor resets (e.g. power glitch).
 *
 * Sensor reports (enabled per feature flag):
 *   QUAT / EULER — SH2_ARVR_STABILIZED_RV at 5000 µs (200 Hz hardware, read on event)
 *   ACCEL        — SH2_LINEAR_ACCELERATION at 5000 µs (gravity-compensated)
 *
 * Quaternion continuity:
 *   The BNO085 can flip q to -q (same rotation, opposite sign).
 *   applyContinuity() tracks the last sign and negates if dot product < 0,
 *   preventing jumps in downstream interpolation or OSC animation.
 *
 * Acceleration deadzone:
 *   Values below ACCEL_NOISE_DEADZONE are zeroed to suppress sensor noise at rest.
 *
 * Hardware:
 *   I2C SDA = GPIO 8
 *   I2C SCL = GPIO 9
 *   Reset   = -1 (not connected; software reset only)
 */

#include "imu.h"
#include "config.h"
#include <Wire.h>
#include <Adafruit_BNO08x.h>

// ================================
// Private State
// ================================
static Adafruit_BNO08x bno08x(BNO08X_RESET);
static sh2_SensorValue_t sensorValue;

// Current values
#if defined(QUAT) || defined(EULER)
static float signW = 1.0f, signX = 0.0f, signY = 0.0f, signZ = 0.0f;
#endif

#ifdef QUAT
static float qw = 1.0f, qx = 0.0f, qy = 0.0f, qz = 0.0f;
static float prevQw = 1.0f, prevQx = 0.0f, prevQy = 0.0f, prevQz = 0.0f;
#endif

#ifdef EULER
static EulerAngles euler = {0.0f, 0.0f, 0.0f};
static EulerAngles prevEuler = {0.0f, 0.0f, 0.0f};
#endif

#ifdef ACCEL
static float ax = 0.0f, ay = 0.0f, az = 0.0f;
static float prevAx = 0.0f, prevAy = 0.0f, prevAz = 0.0f;
#endif

// ================================
// Helper Functions
// ================================
static void recoverI2CBus() {
  pinMode(I2C_SCL, OUTPUT_OPEN_DRAIN);
  pinMode(I2C_SDA, OUTPUT_OPEN_DRAIN);
  digitalWrite(I2C_SCL, HIGH);
  digitalWrite(I2C_SDA, HIGH);
  delay(2);

  // Clock out stuck SDA
  for (int i = 0; i < 9; i++) {
    digitalWrite(I2C_SCL, LOW);
    delayMicroseconds(5);
    digitalWrite(I2C_SCL, HIGH);
    delayMicroseconds(5);
  }

  // STOP condition
  digitalWrite(I2C_SDA, LOW);
  delayMicroseconds(5);
  digitalWrite(I2C_SCL, HIGH);
  delayMicroseconds(5);
  digitalWrite(I2C_SDA, HIGH);
  delay(2);

  pinMode(I2C_SCL, INPUT_PULLUP);
  pinMode(I2C_SDA, INPUT_PULLUP);
}

static void setReports() {
  #if defined(QUAT) || defined(EULER)
  if (!bno08x.enableReport(SH2_ARVR_STABILIZED_RV, 5000)) {
    Serial.println("  Sensor report failed!");
  }
  #endif

  #ifdef ACCEL
  if (!bno08x.enableReport(SH2_LINEAR_ACCELERATION, 5000)) {
    Serial.println("  Accel report failed!");
  }
  #endif
}

static void quaternionToEuler(float qr, float qi, float qj, float qk, EulerAngles* angles) {
  float sqr = sq(qr);
  float sqi = sq(qi);
  float sqj = sq(qj);
  float sqk = sq(qk);

  angles->yaw = atan2(2.0f * (qi * qj + qk * qr), (sqi - sqj - sqk + sqr)) * RAD_TO_DEG;
  angles->pitch = asin(-2.0f * (qi * qk - qj * qr) / (sqi + sqj + sqk + sqr)) * RAD_TO_DEG;
  angles->roll = atan2(2.0f * (qj * qk + qi * qr), (-sqi - sqj + sqk + sqr)) * RAD_TO_DEG;
}

static void applyContinuity(float& w, float& x, float& y, float& z) {
  // Prevent q/-q flips (same rotation, different sign)
  float dot = w*signW + x*signX + y*signY + z*signZ;
  if (dot < 0.0f) {
    w = -w; x = -x; y = -y; z = -z;
  }
  signW = w; signX = x; signY = y; signZ = z;
}

static void applyDeadzone(float& value, float threshold) {
  if (abs(value) < threshold) {
    value = 0.0f;
  }
}

// ================================
// Public API
// ================================
bool imuInit() {
  delay(250);

  constexpr int maxAttempts = 12;
  for (int attempt = 1; attempt <= maxAttempts; attempt++) {
    Wire.end();
    delay(10);
    recoverI2CBus();

    Wire.begin(I2C_SDA, I2C_SCL);
    Wire.setClock(400000);
    delay(75 + (attempt * 50));

    if (bno08x.begin_I2C()) {
      Serial.printf("%-40s[OK]\n", "Initializing BNO085...");
      setReports();
      bno08x.wasReset();  // Clear power-on reset flag
      return true;
    }

    if (attempt == 1) Serial.println();
    Serial.printf("  Retry %d/%d\n", attempt, maxAttempts);
  }

  Serial.printf("%-40s[FAILED]\n", "Initializing BNO085...");
  return false;
}

void imuUpdate() {
  // BNO085 loses all enabled reports after a reset — re-enable them
  if (bno08x.wasReset()) {
    Serial.println(">> IMU reset detected - re-enabling reports");
    setReports();
  }

  if (!bno08x.getSensorEvent(&sensorValue)) {
    return;
  }

  switch (sensorValue.sensorId) {
    #if defined(QUAT) || defined(EULER)
    case SH2_ARVR_STABILIZED_RV: {
      // Read and apply continuity correction once — shared by QUAT and EULER
      float w = sensorValue.un.arvrStabilizedRV.real;
      float x = sensorValue.un.arvrStabilizedRV.i;
      float y = sensorValue.un.arvrStabilizedRV.j;
      float z = sensorValue.un.arvrStabilizedRV.k;
      applyContinuity(w, x, y, z);

      #ifdef QUAT
      qw = w; qx = x; qy = y; qz = z;
      #endif

      #ifdef EULER
      quaternionToEuler(w, x, y, z, &euler);
      #endif
      break;
    }
    #endif
    
    #ifdef ACCEL
    case SH2_LINEAR_ACCELERATION: {
      ax = sensorValue.un.linearAcceleration.x;
      ay = sensorValue.un.linearAcceleration.y;
      az = sensorValue.un.linearAcceleration.z;
      
      // Remove sensor noise when idle
      applyDeadzone(ax, ACCEL_NOISE_DEADZONE);
      applyDeadzone(ay, ACCEL_NOISE_DEADZONE);
      applyDeadzone(az, ACCEL_NOISE_DEADZONE);
      break;
    }
    #endif
  }
}

void imuGetQuaternion(float& w, float& x, float& y, float& z) {
  w = qw; x = qx; y = qy; z = qz;
}

void imuGetEuler(EulerAngles& angles) {
  angles = euler;
}

void imuGetAccel(float& x, float& y, float& z) {
  x = ax; y = ay; z = az;
}

bool imuQuaternionChanged() {
  float distSq = (qw - prevQw) * (qw - prevQw) +
                 (qx - prevQx) * (qx - prevQx) +
                 (qy - prevQy) * (qy - prevQy) +
                 (qz - prevQz) * (qz - prevQz);
  
  bool changed = (distSq > QUAT_CHANGE_THRESHOLD * QUAT_CHANGE_THRESHOLD);
  if (changed) {
    prevQw = qw; prevQx = qx; prevQy = qy; prevQz = qz;
  }
  return changed;
}

bool imuEulerChanged() {
  bool changed = (abs(euler.yaw - prevEuler.yaw) >= EULER_CHANGE_THRESHOLD ||
                  abs(euler.pitch - prevEuler.pitch) >= EULER_CHANGE_THRESHOLD ||
                  abs(euler.roll - prevEuler.roll) >= EULER_CHANGE_THRESHOLD);
  if (changed) {
    prevEuler = euler;
  }
  return changed;
}

bool imuAccelChanged() {
  bool changed = (abs(ax - prevAx) >= ACCEL_CHANGE_THRESHOLD ||
                  abs(ay - prevAy) >= ACCEL_CHANGE_THRESHOLD ||
                  abs(az - prevAz) >= ACCEL_CHANGE_THRESHOLD);
  if (changed) {
    prevAx = ax; prevAy = ay; prevAz = az;
  }
  return changed;
}
