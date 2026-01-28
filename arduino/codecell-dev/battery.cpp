/*
 * Battery Monitoring Module
 */

#include "battery.h"
#include "config.h"

#ifdef LED
#include "led.h"
#endif

float batteryVoltage = 0.0;
float lastBatteryVoltage = 0.0;
uint8_t batteryPercentage = 0;
bool isUSBPowered = false;
uint8_t powerState = POWER_INIT;
bool powerStateChanged = false;
bool voltageChanged = false;

static uint8_t lowVoltageCounter = 0;
static uint8_t chrgCounter = 0;

void initBattery() {
  pinMode(USB_DETECT_PIN, INPUT);  // GPIO0: LOW when charging
  analogReadResolution(12);
  
  int rawMV = analogReadMilliVolts(BATTERY_PIN);
  batteryVoltage = (rawMV * 2) + 65;  // Voltage divider + calibration
  lastBatteryVoltage = 0;  // Force first send
  powerState = POWER_INIT;
  
  Serial.printf("Battery: %.0fmV\n", batteryVoltage);
  
  #ifdef LED
  updateBatteryLED((uint16_t)batteryVoltage, false);
  #endif
}

uint8_t calculateBatteryPercentage(float voltage_mV, uint8_t state) {
  // Special states for charging/USB/full
  if (state == POWER_BAT_CHRG) return 101;  // Charging
  if (state == POWER_USB) return 102;       // USB only
  if (state == POWER_BAT_FULL) return 100;  // Fully charged
  
  // Piecewise linear approximation of LiPo discharge curve
  if (voltage_mV >= 4000) return 100;
  else if (voltage_mV >= 3800) return 80 + (voltage_mV - 3800) / 10;
  else if (voltage_mV >= 3650) return 40 + (voltage_mV - 3650) / 3.75;
  else if (voltage_mV >= 3500) return 10 + (voltage_mV - 3500) / 5;
  else if (voltage_mV >= 3300) return (voltage_mV - 3300) / 20;
  else return 0;
}

void readBattery() {
  static uint8_t prevState = POWER_INIT;

  // Read raw voltage
  int rawMV = analogReadMilliVolts(BATTERY_PIN);
  float rawVoltage = (rawMV * 2) + 65;
  
  // Adaptive filtering: detect large steps (USB events) vs normal discharge
  float delta = abs(rawVoltage - batteryVoltage);
  if (delta > BATTERY_STEP_THRESHOLD_MV) {
    // Large step detected (USB plug/unplug) - update immediately
    batteryVoltage = rawVoltage;
  } else {
    // Normal operation - apply EMA smoothing
    batteryVoltage = (BATTERY_SMOOTHING * rawVoltage) + ((1.0f - BATTERY_SMOOTHING) * batteryVoltage);
  }

  // USB detection: voltage > 4.18V OR GPIO0 LOW
  int gpio0 = digitalRead(USB_DETECT_PIN);
  bool usbPowered = (batteryVoltage > USB_VOLTAGE) || (gpio0 == LOW);
  isUSBPowered = usbPowered;

  // State machine: USB connected
  if (usbPowered) {
    lowVoltageCounter = 0;
    chrgCounter = 0;
    
    if (gpio0 == LOW) {
      if (powerState != POWER_BAT_CHRG) {
        powerState = POWER_BAT_CHRG;
        Serial.println(">> Power Status: Battery is charging");
      }
    } else if ((batteryVoltage > USB_VOLTAGE) && ((powerState == POWER_BAT_CHRG) || (powerState == POWER_BAT_FULL))) {
      // Transition from charging to fully charged
      if (powerState != POWER_BAT_FULL) {
        powerState = POWER_BAT_FULL;
        Serial.println(">> Power Status: Battery Charged");
      }
    } else if (powerState == POWER_INIT) {
      // First boot with USB connected
      Serial.println(">> Power Status: Running from USB Power");
      powerState = POWER_USB;
    }
  } else {
    // State machine: Battery only
    if ((powerState == POWER_BAT_FULL) || (powerState == POWER_INIT)) {
      Serial.println(">> Power Status: Running from Battery Power");
      powerState = POWER_BAT_RUN;
      chrgCounter = 0;
      lowVoltageCounter = 0;
    } else {
      if (batteryVoltage < MIN_BATTERY_VOLTAGE) {
        powerState = POWER_BAT_LOW;
        if (lowVoltageCounter < 10) {  // 10 checks = 2 seconds at 5Hz
          lowVoltageCounter++;
        } else {
          Serial.println(">> Power Status: Battery Low going to Sleep");
          chrgCounter = 0;
          // Deep sleep after 10 consecutive low voltage readings
          #ifdef LED
          for (int i = 0; i < 10; i++) {
            neopixelWrite(LED_PIN, LED_BRIGHTNESS, 0, 0);
            delay(50);
            neopixelWrite(LED_PIN, 0, 0, 0);
            delay(50);
          }
          #endif
          delay(50);
          esp_deep_sleep_start();
        }
      } else {
        lowVoltageCounter = 0;
        if (chrgCounter < 3) {  // Debounce: wait 3 cycles before switching to BAT_RUN
          chrgCounter++;
        } else {
          powerState = POWER_BAT_RUN;
        }
      }
    }
  }
  
  // Change detection for OSC
  if (abs((int)batteryVoltage - (int)lastBatteryVoltage) >= BATTERY_CHANGE_THRESHOLD_MV) {
    voltageChanged = true;
  }
  
  // Update percentage
  batteryPercentage = calculateBatteryPercentage(batteryVoltage, powerState);
  
  if (powerState != prevState) {
    powerStateChanged = true;
    prevState = powerState;
    #ifdef LED
    updateBatteryLED((uint16_t)batteryVoltage, isUSBPowered);
    #endif
  }
}

bool batteryChanged() {
  bool changed = powerStateChanged || voltageChanged;
  if (changed) {
    lastBatteryVoltage = batteryVoltage;
  }
  powerStateChanged = false;
  voltageChanged = false;
  return changed;
}

uint8_t getPowerState() {
  return powerState;
}
