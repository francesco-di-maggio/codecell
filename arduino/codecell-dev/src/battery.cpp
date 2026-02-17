/*
 * Battery Monitoring
 *
 * Reads LiPo voltage via ADC, detects USB/charging state via GPIO0,
 * and tracks power state for OSC transmission to Max/MSP.
 *
 * Power states (matches CodeCell convention):
 *   0 = POWER_BAT_RUN  — running on battery
 *   1 = POWER_USB      — USB powered, no battery (or boot)
 *   2 = POWER_INIT     — startup, not yet determined
 *   3 = POWER_BAT_LOW  — battery low, flashes red LED then deep sleeps (wakes on USB)
 *   4 = POWER_BAT_FULL — battery fully charged on USB
 *   5 = POWER_BAT_CHRG — battery charging on USB
 *
 * BatteryLevelRead() convention (matches CodeCell library):
 *   0–100 = percentage from LiPo discharge curve
 *   101   = charging (POWER_BAT_CHRG)
 *   102   = USB powered without battery (POWER_USB)
 *
 * Hardware:
 *   PIN 4  = battery voltage (ADC, resistor-divided by 2, +65mV offset)
 *   GPIO 0 = charger status (LOW = actively charging)
 */

#include "battery.h"
#include "config.h"
#include "esp_sleep.h"

#ifdef LED
#include "led.h"
#endif

// ================================
// Private State
// ================================
static float voltage = 0.0f;
static float rawVoltage = 0.0f;
static uint8_t percentage = 0;
static uint8_t state = POWER_INIT;
static bool usbPowered = false;

// Change tracking for LED updates
static uint8_t prevLedState = POWER_INIT;

// Change tracking for OSC transmission
static float prevVoltage = 0.0f;
static uint8_t prevState = POWER_INIT;

// Voltage settling after state transitions
static bool voltageSettling = false;
static uint8_t stabilityCounter = 0;
static float lastReadVoltage = 0.0f;

// Debounce counters
static uint8_t lowVoltageCounter = 0;
static uint8_t batteryRunCounter = 0;
static uint8_t chargedCounter = 0;
static uint8_t chargingCounter = 0;

// ================================
// Helper Functions
// ================================
static uint8_t calculatePercentage(float voltage_mv, uint8_t powerState) {
  // Special states
  if (powerState == POWER_BAT_CHRG) return 101;  // Charging
  if (powerState == POWER_USB) return 102;       // USB only
  if (powerState == POWER_BAT_FULL) return 100;  // Full

  // LiPo discharge curve (piecewise linear)
  if (voltage_mv >= 4000) return 100;
  if (voltage_mv >= 3800) return 80 + (voltage_mv - 3800) / 10;
  if (voltage_mv >= 3650) return 40 + (voltage_mv - 3650) / 3.75;
  if (voltage_mv >= 3500) return 10 + (voltage_mv - 3500) / 5;
  if (voltage_mv >= 3300) return (voltage_mv - 3300) / 20;
  return 0;
}

static void updateStateMachine(int gpio0) {
  if (usbPowered) {
    // Reset battery-only counters
    lowVoltageCounter = 0;
    batteryRunCounter = 0;

    // GPIO0 LOW = charger IC is actively charging the battery
    if (gpio0 == LOW) {
      chargedCounter = 0;
      if (state != POWER_BAT_CHRG) {
        if (chargingCounter < 3) {
          chargingCounter++;
        } else {
          state = POWER_BAT_CHRG;
          Serial.println(">> Power Status: Battery charging");
        }
      } else {
        chargingCounter = 3;  // already in charging state, keep counter saturated
      }
    }
    // GPIO0 HIGH + voltage above threshold = charging just finished
    // Only transition from CHRG → FULL, never from FULL → USB on a voltage dip
    else if (rawVoltage > USB_VOLTAGE &&
             (state == POWER_BAT_CHRG || state == POWER_BAT_FULL)) {
      chargingCounter = 0;
      if (state != POWER_BAT_FULL) {
        if (chargedCounter < 3) {
          chargedCounter++;
        } else {
          state = POWER_BAT_FULL;
          Serial.println(">> Power Status: Battery fully charged");
        }
      } else {
        chargedCounter = 3;  // already full, keep counter saturated
      }
    }
    // USB connected but not charging and not full — USB-only power or boot
    else {
      chargedCounter = 0;
      chargingCounter = 0;
      if (state == POWER_INIT || state == POWER_BAT_RUN || state == POWER_BAT_LOW) {
        state = POWER_USB;
        Serial.println(">> Power Status: Running from USB");
      }
      // If state is POWER_BAT_FULL, stay there — a small voltage dip below
      // USB_VOLTAGE does not mean charging ended, it just means the ADC
      // reading fluctuated. Only GPIO0 or a full disconnect changes this.
    }
  } else {
    // No USB detected
    chargedCounter = 0;
    chargingCounter = 0;

    if (state == POWER_BAT_FULL || state == POWER_USB || state == POWER_INIT) {
      // Transitioning from USB/charged/boot to battery-only
      state = POWER_BAT_RUN;
      Serial.println(">> Power Status: Running from battery");
      batteryRunCounter = 0;
      lowVoltageCounter = 0;
    } else {
      // Already on battery — check voltage
      if (voltage < MIN_BATTERY_VOLTAGE) {
        state = POWER_BAT_LOW;
        // Debounce: require 10 consecutive low readings before sleeping
        if (lowVoltageCounter < 10) {
          lowVoltageCounter++;
        } else {
          Serial.println(">> Power Status: Battery low - Going to Sleep");
          batteryRunCounter = 0;

          #ifdef LED
          // Flash red 10x before sleep (matches CodeCell library behavior)
          for (int i = 0; i < 10; i++) {
            neopixelWrite(LED_PIN, LED_BRIGHTNESS, 0, 0);
            delay(50);
            neopixelWrite(LED_PIN, 0, 0, 0);
            delay(50);
          }
          #endif

          // Wake up when USB is plugged in (GPIO0 goes LOW)
          esp_deep_sleep_enable_gpio_wakeup(1ULL << USB_DETECT_PIN, ESP_GPIO_WAKEUP_GPIO_LOW);
          esp_deep_sleep_start();
        }
      } else {
        lowVoltageCounter = 0;
        // Debounce: require 3 consecutive normal readings before BAT_RUN
        if (batteryRunCounter < 3) {
          batteryRunCounter++;
        } else {
          state = POWER_BAT_RUN;
        }
      }
    }
  }

  // If state changed, update LED and trigger voltage settling
  if (state != prevLedState) {
    prevLedState = state;
    voltageSettling = true;
    stabilityCounter = 0;
    lastReadVoltage = voltage;

    #ifdef LED
    ledUpdate();
    #endif
  }
}

// ================================
// Public API
// ================================
void batteryInit() {
  pinMode(USB_DETECT_PIN, INPUT);
  analogReadResolution(12);
  
  int rawMV = analogReadMilliVolts(BATTERY_PIN);
  rawVoltage = (rawMV * 2) + 65;
  voltage = rawVoltage;
  prevVoltage = 0;  // Force first transmission
  state = POWER_INIT;
}

void batteryUpdate() {
  // Read raw ADC voltage and apply hardware correction:
  //   * 2  — resistor divider on battery pin halves the voltage
  //   + 65 — empirical offset for ESP32 ADC nonlinearity
  int rawMV = analogReadMilliVolts(BATTERY_PIN);
  rawVoltage = (rawMV * 2) + 65;

  // USB detection:
  //   GPIO0 LOW  = charger IC is active (USB connected + battery present)
  //   High voltage alone is NOT sufficient: a fully-charged battery can
  //   read above USB_VOLTAGE without USB connected, so we only use
  //   rawVoltage as a secondary signal when GPIO0 is HIGH.
  int gpio0 = digitalRead(USB_DETECT_PIN);
  usbPowered = (gpio0 == LOW) || (rawVoltage > USB_VOLTAGE && state != POWER_BAT_RUN);
  
  // Adaptive filtering: large steps (USB events) vs normal discharge
  float delta = abs(rawVoltage - voltage);
  if (delta > BATTERY_STEP_THRESHOLD_MV) {
    voltage = rawVoltage;  // Immediate update
  } else {
    voltage = (BATTERY_SMOOTHING * rawVoltage) + ((1.0f - BATTERY_SMOOTHING) * voltage);
  }
  
  // Check voltage stability after state transitions
  if (voltageSettling) {
    if (abs(voltage - lastReadVoltage) < BATTERY_CHANGE_THRESHOLD_MV) {
      stabilityCounter++;
      if (stabilityCounter >= 5) {  // 5 consecutive reads = 1 second @ 5Hz
        voltageSettling = false;
        prevVoltage = voltage - BATTERY_CHANGE_THRESHOLD_MV - 1;  // Force next transmission
      }
    } else {
      stabilityCounter = 0;  // Reset if voltage still moving
    }
    lastReadVoltage = voltage;
  }
  
  // Update state machine and percentage
  updateStateMachine(gpio0);
  
  // Calculate percentage (skip during settling for efficiency)
  if (!voltageSettling) {
    percentage = calculatePercentage(voltage, state);
  }
}

bool batteryHasChanged() {
  // Don't transmit during voltage settling period
  if (voltageSettling) {
    return false;
  }
  
  bool voltageChanged = abs((int)voltage - (int)prevVoltage) >= BATTERY_CHANGE_THRESHOLD_MV;
  bool stateChanged = (state != prevState);
  
  if (voltageChanged) prevVoltage = voltage;
  if (stateChanged)   prevState = state;

  return voltageChanged || stateChanged;
}

int batteryGetVoltage() {
  return (int)voltage;
}

uint8_t batteryGetPercentage() {
  return percentage;
}

uint8_t batteryGetPowerState() {
  return state;
}

bool batteryIsUSBPowered() {
  return usbPowered;
}
