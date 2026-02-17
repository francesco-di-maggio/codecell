/*
 * Light Sensor (VCNL4040)
 *
 * Reads proximity, ambient light, and white light via I2C.
 * All three channels are EMA-smoothed to reduce sensor noise.
 * Change detection is per-channel and independent.
 *
 * Sensor configuration (matches CodeCell library settings):
 *   PS_IT = 8T integration time, 16-bit resolution, 200mA LED current
 *   PS_SMART_PERS enabled for stable proximity readings
 *   ALS default integration time
 *
 * Hardware:
 *   I2C address = 0x60
 *   SDA = GPIO 8, SCL = GPIO 9 (shared I2C bus with BNO085)
 */

#include "light.h"
#include "config.h"
#include <Wire.h>

// I2C Address and Registers
#define VCNL4040_ADDRESS 0x60
#define VCNL4040_ALS_CONF_REG 0x00
#define VCNL4040_PS_CONF1_REG 0x03
#define VCNL4040_PS_CONF3_REG 0x04
#define VCNL4040_PROX_REG 0x08
#define VCNL4040_AMBIENT_REG 0x09
#define VCNL4040_WHITE_REG 0x0A

// ================================
// Private State (all encapsulated)
// ================================
static uint16_t proximity = 0;
static uint16_t ambient = 0;
static uint16_t white = 0;
static uint16_t prevProximity = 0;
static uint16_t prevAmbient = 0;
static uint16_t prevWhite = 0;

// EMA smoothed values (reduces sensor noise)
static float proxSmoothed = 0.0f;
static float ambSmoothed = 0.0f;
static float whiteSmoothed = 0.0f;

static bool initialized = false;

// ================================
// Helper Functions (DRY principle)
// ================================
static bool writeRegister(uint8_t reg, uint8_t lsb, uint8_t msb) {
  Wire.beginTransmission(VCNL4040_ADDRESS);
  Wire.write(reg);
  Wire.write(lsb);
  Wire.write(msb);
  return (Wire.endTransmission() == 0);
}

static bool readRegister(uint8_t reg, uint16_t& value) {
  Wire.beginTransmission(VCNL4040_ADDRESS);
  Wire.write(reg);
  if (Wire.endTransmission(false) != 0) return false;
  
  Wire.requestFrom(VCNL4040_ADDRESS, 2);
  if (Wire.available() < 2) return false;
  
  uint8_t lsb = Wire.read();
  uint8_t msb = Wire.read();
  value = lsb | (msb << 8);
  return true;
}

static void applySmoothing(uint16_t rawValue, float& smoothed, uint16_t& output) {
  smoothed = (LIGHT_SMOOTHING * rawValue) + ((1.0f - LIGHT_SMOOTHING) * smoothed);
  output = (uint16_t)smoothed;
}

// ================================
// Public API
// ================================
bool lightInit() {
  // Test I2C connection
  Wire.beginTransmission(VCNL4040_ADDRESS);
  if (Wire.endTransmission() != 0) {
    return false;
  }
  
  // Configure proximity sensor
  // 0x0E = PS_IT=8T (integration time), PS_SD=0 (power on)
  // 0x08 = PS_HD=1 (16-bit resolution)
  if (!writeRegister(VCNL4040_PS_CONF1_REG, 0x0E, 0x08)) {
    return false;
  }
  
  // PS_MS configuration
  // 0x10 = PS_SMART_PERS=1 (smart persistence)
  // 0x47 = LED_I=200mA (matches CodeCell library)
  if (!writeRegister(VCNL4040_PS_CONF3_REG, 0x10, 0x47)) {
    return false;
  }
  
  // Configure ambient light sensor
  // 0x00 = ALS_SD=0 (power on), default integration time
  if (!writeRegister(VCNL4040_ALS_CONF_REG, 0x00, 0x00)) {
    return false;
  }
  
  delay(100);  // Sensor stabilization
  
  // Initialize smoothed values (prevents startup spikes)
  uint16_t initial;
  if (readRegister(VCNL4040_PROX_REG, initial)) {
    proxSmoothed = initial;
    proximity = initial;
  }
  if (readRegister(VCNL4040_WHITE_REG, initial)) {
    whiteSmoothed = initial;
    white = initial;
  }
  if (readRegister(VCNL4040_AMBIENT_REG, initial)) {
    ambSmoothed = initial;
    ambient = initial;
  }
  
  initialized = true;
  return true;
}

void lightUpdate() {
  if (!initialized) return;
  
  uint16_t raw;
  
  // Read and smooth each sensor
  if (readRegister(VCNL4040_PROX_REG, raw)) {
    applySmoothing(raw, proxSmoothed, proximity);
  }
  
  if (readRegister(VCNL4040_WHITE_REG, raw)) {
    applySmoothing(raw, whiteSmoothed, white);
  }
  
  if (readRegister(VCNL4040_AMBIENT_REG, raw)) {
    applySmoothing(raw, ambSmoothed, ambient);
  }
}

bool lightHasChanged() {
  // Check all three sensors (any change triggers transmission)
  bool proxChanged = abs((int)proximity - (int)prevProximity) >= PROXIMITY_CHANGE_THRESHOLD;
  bool ambChanged = abs((int)ambient - (int)prevAmbient) >= AMBIENT_CHANGE_THRESHOLD;
  bool whiteChanged = abs((int)white - (int)prevWhite) >= WHITE_CHANGE_THRESHOLD;
  
  if (proxChanged)  prevProximity = proximity;
  if (ambChanged)   prevAmbient = ambient;
  if (whiteChanged) prevWhite = white;

  return proxChanged || ambChanged || whiteChanged;
}

uint16_t lightGetProximity() {
  return proximity;
}

uint16_t lightGetAmbient() {
  return ambient;
}

uint16_t lightGetWhite() {
  return white;
}
