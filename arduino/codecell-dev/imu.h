/*
 * IMU Module (BNO085)
 * Direct control via Adafruit_BNO08x library
 */

#ifndef IMU_H
#define IMU_H

#include <Arduino.h>
#include <Adafruit_BNO08x.h>

// Sensor objects
extern Adafruit_BNO08x bno08x;
extern sh2_SensorValue_t sensorValue;

// Data structures
struct euler_t {
  float yaw;
  float pitch;
  float roll;
};

extern euler_t ypr;
extern float qw, qx, qy, qz;  // Quaternions
extern float ax, ay, az;      // Acceleration

// Previous values for change detection
extern float prev_qw, prev_qx, prev_qy, prev_qz;
extern euler_t prev_ypr;
extern float prev_ax, prev_ay, prev_az;

// Sign continuity reference (prevents q/-q flips)
extern float qw_sign, qx_sign, qy_sign, qz_sign;

// Functions
bool initSensors();
void setReports();
void readSensors();
void quaternionToEuler(float qr, float qi, float qj, float qk, euler_t* ypr, bool degrees = false);
bool quatChanged();
bool eulerChanged();
bool accelChanged();

#endif // IMU_H
