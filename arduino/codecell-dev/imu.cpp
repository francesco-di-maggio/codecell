/*
 * IMU Module Implementation (BNO085)
 */

#include "imu.h"
#include "config.h"

static void recoverI2CBus() {
  // Attempt to recover if a device is holding SDA low (common after fast reset/upload).
  // Generates 9 clock pulses on SCL and a STOP.
  pinMode(I2C_SCL, OUTPUT_OPEN_DRAIN);
  pinMode(I2C_SDA, OUTPUT_OPEN_DRAIN);
  digitalWrite(I2C_SCL, HIGH);
  digitalWrite(I2C_SDA, HIGH);
  delay(2);

  // If SDA is stuck low, clock it free.
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

// Sensor objects
Adafruit_BNO08x bno08x(BNO08X_RESET);
sh2_SensorValue_t sensorValue;

// Data storage
euler_t ypr = {0.0, 0.0, 0.0};
float qw = 0.0, qx = 0.0, qy = 0.0, qz = 0.0;
float ax = 0.0, ay = 0.0, az = 0.0;

// Previous values for change detection
float prev_qw = 0.0, prev_qx = 0.0, prev_qy = 0.0, prev_qz = 0.0;
euler_t prev_ypr = {0.0, 0.0, 0.0};
float prev_ax = 0.0, prev_ay = 0.0, prev_az = 0.0;

// Sign continuity reference (prevents q/-q flips)
float qw_sign = 1.0f, qx_sign = 0.0f, qy_sign = 0.0f, qz_sign = 0.0f;

bool initSensors() {
  // After flashing, ESP32-C3 can reboot quickly while peripherals are mid-transaction.
  // Use deterministic retries + I2C bus recovery instead of huge fixed delays.
  delay(250);

  Serial.println("Initializing BNO085...");

  constexpr int kMaxAttempts = 12;
  for (int attempt = 1; attempt <= kMaxAttempts; attempt++) {
    // Reset I2C driver state.
    Wire.end();
    delay(10);
    recoverI2CBus();

    // Initialize I2C with 400kHz speed (same as CodeCell library)
    Wire.begin(I2C_SDA, I2C_SCL);
    Wire.setClock(400000);

    // Give the sensor a moment; increase slightly each attempt.
    delay(75 + (attempt * 50));

    if (bno08x.begin_I2C()) {
      Serial.println("BNO085 found!");
      setReports();
      return true;
    }

    Serial.printf("BNO085 retry %d/%d\n", attempt, kMaxAttempts);
  }

  Serial.println("ERROR: BNO085 initialization failed after retries!");
  return false;
}

void setReports() {
  #ifdef FAST_MODE
    sh2_SensorId_t reportType = SH2_GYRO_INTEGRATED_RV;
    long reportIntervalUs = 2000;
  #else
    sh2_SensorId_t reportType = SH2_ARVR_STABILIZED_RV;
    long reportIntervalUs = 5000;
  #endif
  
  if (!bno08x.enableReport(reportType, reportIntervalUs)) {
    Serial.println("Sensor report failed!");
  }
  
  #ifdef ACCEL
  if (!bno08x.enableReport(SH2_LINEAR_ACCELERATION, 5000)) {
    Serial.println("Accel report failed!");
  }
  #endif
}

void readSensors() {
  if (bno08x.getSensorEvent(&sensorValue)) {
    switch (sensorValue.sensorId) {
      #if defined(QUAT) || defined(EULER)
      case SH2_ARVR_STABILIZED_RV: {
        #ifdef QUAT
        qw = sensorValue.un.arvrStabilizedRV.real;
        qx = sensorValue.un.arvrStabilizedRV.i;
        qy = sensorValue.un.arvrStabilizedRV.j;
        qz = sensorValue.un.arvrStabilizedRV.k;
        
        // Apply sign continuity: flip sign if dot product is negative
        // Prevents jumps between q and -q (which represent the same rotation)
        float dot = qw*qw_sign + qx*qx_sign + qy*qy_sign + qz*qz_sign;
        if (dot < 0.0f) {
          qw = -qw; qx = -qx; qy = -qy; qz = -qz;
        }
        // Update sign reference for next frame
        qw_sign = qw; qx_sign = qx; qy_sign = qy; qz_sign = qz;
        #endif
        
        #ifdef EULER
        quaternionToEuler(
          sensorValue.un.arvrStabilizedRV.real,
          sensorValue.un.arvrStabilizedRV.i,
          sensorValue.un.arvrStabilizedRV.j,
          sensorValue.un.arvrStabilizedRV.k,
          &ypr, true
        );
        #endif
        break;
      }

      case SH2_GYRO_INTEGRATED_RV: {
        #ifdef QUAT
        qw = sensorValue.un.gyroIntegratedRV.real;
        qx = sensorValue.un.gyroIntegratedRV.i;
        qy = sensorValue.un.gyroIntegratedRV.j;
        qz = sensorValue.un.gyroIntegratedRV.k;
        
        // Apply sign continuity
        float dot = qw*qw_sign + qx*qx_sign + qy*qy_sign + qz*qz_sign;
        if (dot < 0.0f) {
          qw = -qw; qx = -qx; qy = -qy; qz = -qz;
        }
        qw_sign = qw; qx_sign = qx; qy_sign = qy; qz_sign = qz;
        #endif
        
        #ifdef EULER
        quaternionToEuler(
          sensorValue.un.gyroIntegratedRV.real,
          sensorValue.un.gyroIntegratedRV.i,
          sensorValue.un.gyroIntegratedRV.j,
          sensorValue.un.gyroIntegratedRV.k,
          &ypr, true
        );
        #endif
        break;
      }
      #endif
      
      #ifdef ACCEL
      case SH2_LINEAR_ACCELERATION: {
        ax = sensorValue.un.linearAcceleration.x;
        ay = sensorValue.un.linearAcceleration.y;
        az = sensorValue.un.linearAcceleration.z;
        
        // Apply deadzone to eliminate sensor noise when idle
        ax = (abs(ax) < ACCEL_NOISE_DEADZONE) ? 0.0f : ax;
        ay = (abs(ay) < ACCEL_NOISE_DEADZONE) ? 0.0f : ay;
        az = (abs(az) < ACCEL_NOISE_DEADZONE) ? 0.0f : az;
        break;
      }
      #endif
    }
  }
}

void quaternionToEuler(float qr, float qi, float qj, float qk, euler_t* ypr, bool degrees) {
  float sqr = sq(qr);
  float sqi = sq(qi);
  float sqj = sq(qj);
  float sqk = sq(qk);

  ypr->yaw = atan2(2.0 * (qi * qj + qk * qr), (sqi - sqj - sqk + sqr));
  ypr->pitch = asin(-2.0 * (qi * qk - qj * qr) / (sqi + sqj + sqk + sqr));
  ypr->roll = atan2(2.0 * (qj * qk + qi * qr), (-sqi - sqj + sqk + sqr));

  if (degrees) {
    ypr->yaw *= RAD_TO_DEG;
    ypr->pitch *= RAD_TO_DEG;
    ypr->roll *= RAD_TO_DEG;
  }
}

bool quatChanged() {
  // Compute Euclidean distance in quaternion space
  float dist_sq = (qw - prev_qw) * (qw - prev_qw) +
                  (qx - prev_qx) * (qx - prev_qx) +
                  (qy - prev_qy) * (qy - prev_qy) +
                  (qz - prev_qz) * (qz - prev_qz);
  
  bool changed = (dist_sq > QUAT_CHANGE_THRESHOLD * QUAT_CHANGE_THRESHOLD);
  if (changed) {
    prev_qw = qw; prev_qx = qx; prev_qy = qy; prev_qz = qz;
  }
  return changed;
}

bool eulerChanged() {
  bool changed = (abs(ypr.yaw - prev_ypr.yaw) >= EULER_CHANGE_THRESHOLD ||
                  abs(ypr.pitch - prev_ypr.pitch) >= EULER_CHANGE_THRESHOLD ||
                  abs(ypr.roll - prev_ypr.roll) >= EULER_CHANGE_THRESHOLD);
  if (changed) {
    prev_ypr = ypr;
  }
  return changed;
}

bool accelChanged() {
  bool changed = (abs(ax - prev_ax) >= ACCEL_CHANGE_THRESHOLD ||
                  abs(ay - prev_ay) >= ACCEL_CHANGE_THRESHOLD ||
                  abs(az - prev_az) >= ACCEL_CHANGE_THRESHOLD);
  if (changed) {
    prev_ax = ax; prev_ay = ay; prev_az = az;
  }
  return changed;
}
