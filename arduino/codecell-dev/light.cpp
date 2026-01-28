/*
 * Light Sensor Module Implementation (VCNL4040)
 * Proximity and ambient light sensing
 */

#include "light.h"
#include "config.h"
#include <Wire.h>

// State variables
uint16_t proximityValue = 0;
uint16_t ambientValue = 0;
uint16_t whiteValue = 0;
uint16_t lastProximityValue = 0;
uint16_t lastAmbientValue = 0;
uint16_t lastWhiteValue = 0;

// EMA smoothed values
static float proximitySmoothed = 0;
static float ambientSmoothed = 0;
static float whiteSmoothed = 0;
static bool lightInitialized = false;

bool initLight() {
  Serial.print("Initializing VCNL4040 light sensor... ");
  
  // Test connection
  Wire.beginTransmission(VCNL4040_ADDRESS);
  if (Wire.endTransmission() != 0) {
    Serial.println("FAILED (not found)");
    return false;
  }
  
  // PS_CONF1 + PS_CONF2 (register 0x03)
  // Lower byte (PS_CONF1): PS_SD=0 (on), PS_IT=8T (bits 3:1=111), PS_PERS=1, PS_DUTY=1/40 (bits 7:6=00)
  // Upper byte (PS_CONF2): PS_HD=16-bit (bit 3=1), others default
  Wire.beginTransmission(VCNL4040_ADDRESS);
  Wire.write(VCNL4040_PS_CONF1_REG);
  Wire.write(0x0E);  // LSB: PS_IT=8T (0b1110), PS_SD=0 (power on)
  Wire.write(0x08);  // MSB: PS_HD=1 (16-bit)
  if (Wire.endTransmission() != 0) {
    Serial.println("FAILED (PS_CONF1/2)");
    return false;
  }
  
  // PS_CONF3 + PS_MS (register 0x04) = 0x4710 (matches official CodeCell library)
  // Lower byte (PS_CONF3): 0x10 = PS_SMART_PERS=1 (enable smart persistence)
  // Upper byte (PS_MS): 0x47 = LED_I=200mA (bits 2:0=111), PS_MS=1 (bit 6)
  Wire.beginTransmission(VCNL4040_ADDRESS);
  Wire.write(VCNL4040_PS_CONF3_REG);
  Wire.write(0x10);  // LSB: PS_SMART_PERS=1
  Wire.write(0x47);  // MSB: CodeCell uses 0x47 (not 0x07)
  if (Wire.endTransmission() != 0) {
    Serial.println("FAILED (PS_CONF3/MS)");
    return false;
  }
  
  // ALS_CONF (register 0x00)
  // Lower byte: ALS_SD=0 (power on), ALS_IT=80ms (default)
  Wire.beginTransmission(VCNL4040_ADDRESS);
  Wire.write(VCNL4040_ALS_CONF_REG);
  Wire.write(0x00);  // LSB: ALS_SD=0 (power on)
  Wire.write(0x00);  // MSB: defaults
  if (Wire.endTransmission() != 0) {
    Serial.println("FAILED (ALS_CONF)");
    return false;
  }
  
  delay(100);  // Allow sensor to stabilize and take first readings
  
  // Initialize smoothed values to first reading (prevents startup transient)
  uint8_t data[2];
  
  // Read initial proximity
  Wire.beginTransmission(VCNL4040_ADDRESS);
  Wire.write(VCNL4040_PROX_REG);
  Wire.endTransmission(false);
  Wire.requestFrom(VCNL4040_ADDRESS, 2);
  if (Wire.available() >= 2) {
    data[0] = Wire.read();
    data[1] = Wire.read();
    proximitySmoothed = data[0] | (data[1] << 8);
    proximityValue = (uint16_t)proximitySmoothed;
  }
  
  // Read initial white
  Wire.beginTransmission(VCNL4040_ADDRESS);
  Wire.write(VCNL4040_WHITE_REG);
  Wire.endTransmission(false);
  Wire.requestFrom(VCNL4040_ADDRESS, 2);
  if (Wire.available() >= 2) {
    data[0] = Wire.read();
    data[1] = Wire.read();
    whiteSmoothed = data[0] | (data[1] << 8);
    whiteValue = (uint16_t)whiteSmoothed;
  }
  
  // Read initial ambient
  Wire.beginTransmission(VCNL4040_ADDRESS);
  Wire.write(VCNL4040_AMBIENT_REG);
  Wire.endTransmission(false);
  Wire.requestFrom(VCNL4040_ADDRESS, 2);
  if (Wire.available() >= 2) {
    data[0] = Wire.read();
    data[1] = Wire.read();
    ambientSmoothed = data[0] | (data[1] << 8);
    ambientValue = (uint16_t)ambientSmoothed;
  }
  Wire.endTransmission();
  
  lightInitialized = true;
  Serial.println("OK");
  return true;
}

void readLight() {
  if (!lightInitialized) {
    return;  // Sensor not ready
  }
  
  uint8_t data[2];
  
  // Read proximity
  Wire.beginTransmission(VCNL4040_ADDRESS);
  Wire.write(VCNL4040_PROX_REG);
  if (Wire.endTransmission(false) != 0) {
    return;  // I2C error
  }
  
  Wire.requestFrom(VCNL4040_ADDRESS, 2);
  if (Wire.available() >= 2) {
    data[0] = Wire.read();  // LSB
    data[1] = Wire.read();  // MSB
    uint16_t rawProx = data[0] | (data[1] << 8);
    proximitySmoothed = (LIGHT_SMOOTHING * rawProx) + ((1.0f - LIGHT_SMOOTHING) * proximitySmoothed);
    proximityValue = (uint16_t)proximitySmoothed;
  }
  
  // Read white light
  Wire.beginTransmission(VCNL4040_ADDRESS);
  Wire.write(VCNL4040_WHITE_REG);
  if (Wire.endTransmission(false) != 0) {
    return;  // I2C error
  }
  Wire.requestFrom(VCNL4040_ADDRESS, 2);
  if (Wire.available() >= 2) {
    data[0] = Wire.read();
    data[1] = Wire.read();
    uint16_t rawWhite = data[0] | (data[1] << 8);
    whiteSmoothed = (LIGHT_SMOOTHING * rawWhite) + ((1.0f - LIGHT_SMOOTHING) * whiteSmoothed);
    whiteValue = (uint16_t)whiteSmoothed;
  }
  
  // Read ambient light
  Wire.beginTransmission(VCNL4040_ADDRESS);
  Wire.write(VCNL4040_AMBIENT_REG);
  if (Wire.endTransmission(false) != 0) {
    return;  // I2C error
  }
  Wire.requestFrom(VCNL4040_ADDRESS, 2);
  if (Wire.available() >= 2) {
    data[0] = Wire.read();
    data[1] = Wire.read();
    uint16_t rawAmbient = data[0] | (data[1] << 8);
    ambientSmoothed = (LIGHT_SMOOTHING * rawAmbient) + ((1.0f - LIGHT_SMOOTHING) * ambientSmoothed);
    ambientValue = (uint16_t)ambientSmoothed;
  }
  
  Wire.endTransmission();
}

bool proximityChanged() {
  bool changed = abs((int)proximityValue - (int)lastProximityValue) >= PROXIMITY_CHANGE_THRESHOLD;
  if (changed) {
    lastProximityValue = proximityValue;
  }
  return changed;
}

bool ambientChanged() {
  bool changed = abs((int)ambientValue - (int)lastAmbientValue) >= AMBIENT_CHANGE_THRESHOLD;
  if (changed) {
    lastAmbientValue = ambientValue;
  }
  return changed;
}

bool whiteChanged() {
  bool changed = abs((int)whiteValue - (int)lastWhiteValue) >= WHITE_CHANGE_THRESHOLD;
  if (changed) {
    lastWhiteValue = whiteValue;
  }
  return changed;
}
