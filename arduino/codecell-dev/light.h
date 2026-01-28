/*
 * Light Sensor Module (VCNL4040)
 * Proximity and ambient light sensing
 */

#ifndef LIGHT_H
#define LIGHT_H

#include <Arduino.h>

// VCNL4040 I2C Address and Registers
#define VCNL4040_ADDRESS 0x60
#define VCNL4040_ALS_CONF_REG 0x00
#define VCNL4040_PS_CONF1_REG 0x03
#define VCNL4040_PS_CONF3_REG 0x04
#define VCNL4040_INT_FLAG 0x0B
#define VCNL4040_PROX_REG 0x08
#define VCNL4040_AMBIENT_REG 0x09
#define VCNL4040_WHITE_REG 0x0A

// Sensor data
extern uint16_t proximityValue;
extern uint16_t ambientValue;
extern uint16_t whiteValue;
extern uint16_t lastProximityValue;
extern uint16_t lastAmbientValue;
extern uint16_t lastWhiteValue;

// Functions
bool initLight();
void readLight();
bool proximityChanged();
bool ambientChanged();
bool whiteChanged();

#endif // LIGHT_H
