/*
 * CodeCell Configuration
 * Feature flags, hardware settings, and constants
 */

#ifndef CONFIG_H
#define CONFIG_H

// ================================
// VERSION
// ================================
#define FIRMWARE_VERSION "v1.2.3"
#define BUILD_DATE "2026-03-20"
#define AUTHOR "Francesco Di Maggio"

// ================================
// FEATURE FLAGS
// ================================
#define QUAT        // Quaternion rotation data
#define ACCEL       // Linear acceleration
#define BATTERY     // Battery monitoring
#define LED         // LED control and status indication
#define LIGHT       // Light sensor (VCNL4040)
#define BUTTON      // Button inputs (GPIO 5, 6)
#define PING        // Heartbeat messages (1Hz)
#define IP          // IP address announcements
#define UPTIME      // Uptime reporting

// ================================
// HARDWARE PINS
// ================================
#define BNO08X_RESET -1
#define I2C_SDA 8
#define I2C_SCL 9
#define BATTERY_PIN 4
#define USB_DETECT_PIN 0
#define BUTTON_PINS {5, 6}    // GPIO pins for buttons (add more pins to add more buttons)

// Hardware variant detection (C3 vs C6)
#if CONFIG_IDF_TARGET_ESP32C6
  #define LED_PIN 19              // NeoPixel
  #define LED_ON_PIN 20           // LED power control
  #define SENS_ON_PIN 18          // Sensor power control
#else
  #define LED_PIN 10              // NeoPixel (C3)
#endif

// ================================
// NETWORK
// ================================
#define BASE_ADDRESS "/codecell"
#define DEVICE_INDEX 1
#define STREAM_RATE_HZ 100             // OSC transmission rate
#define WIFI_CONNECT_TIMEOUT_SEC 30    // WiFi connection timeout
#define WIFI_CONNECT_RETRY_MS 500      // Time between connection attempts
#define OSC_ADDRESS_MAX_LEN 64         // Maximum OSC address path length
#define OSC_PACKET_MAX_SIZE 512        // Maximum OSC packet size

// ================================
// UPDATE RATES
// ================================
// IMU: read every loop; output rate is controlled by the BNO085 report interval set in imu.cpp
#define LIGHT_READ_RATE_HZ 50
#define BATTERY_READ_RATE_HZ 5
#define BUTTON_READ_RATE_HZ 50
#define PING_RATE_MS 1000
#define IP_RATE_MS 10000
#define UPTIME_RATE_MS 1000

// ================================
// SENSOR THRESHOLDS
// ================================
// IMU
#define QUAT_CHANGE_THRESHOLD 0.01f
#define ACCEL_CHANGE_THRESHOLD 0.1f
#define ACCEL_NOISE_DEADZONE 0.5f

// Battery
#define BATTERY_SMOOTHING 0.1f           // EMA weight per read (0.1 = ~3s to settle at 5Hz)
#define BATTERY_STEP_THRESHOLD_MV 200    // Jump threshold: bypass filter on large voltage steps
#define BATTERY_CHANGE_THRESHOLD_MV 20   // Minimum change (mV) to trigger OSC transmission
#define USB_VOLTAGE 4180                 // mV threshold: above this = USB powered or fully charged
#define MIN_BATTERY_VOLTAGE 3350         // mV threshold: below this = low battery warning

// Light
#define PROXIMITY_CHANGE_THRESHOLD 20
#define AMBIENT_CHANGE_THRESHOLD 5
#define WHITE_CHANGE_THRESHOLD 5
#define LIGHT_SMOOTHING 0.2f

// LED
#define LED_BRIGHTNESS 5         // 0-10 (0=off to save battery)

#endif // CONFIG_H
