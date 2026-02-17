/*
 * IMU Sensor (BNO085)
 * Quaternion, Euler angles, and linear acceleration
 */

#ifndef IMU_H
#define IMU_H

#include <Arduino.h>

// Data structures
struct EulerAngles {
  float yaw;
  float pitch;
  float roll;
};

// Public API
bool imuInit();
void imuUpdate();

// Getters
void imuGetQuaternion(float& w, float& x, float& y, float& z);
void imuGetEuler(EulerAngles& angles);
void imuGetAccel(float& x, float& y, float& z);

// Change detection
bool imuQuaternionChanged();
bool imuEulerChanged();
bool imuAccelChanged();

#endif // IMU_H
