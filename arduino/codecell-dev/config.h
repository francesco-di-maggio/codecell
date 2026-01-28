/*
 * Global Configuration
 * Feature flags and hardware settings
 */

#ifndef CONFIG_H
#define CONFIG_H

// ================================
// VERSION INFORMATION
// ================================
#define FIRMWARE_VERSION "v1.2.0-dev"
#define BUILD_DATE "2026-01-28"
#define AUTHOR "Francesco Di Maggio"

// ================================
// SENSOR MODE
// ================================
// #define FAST_MODE  // Gyro-integrated (up to 1000Hz, more noise)
                      // Disabled = AR/VR stabilized (250Hz max, more accurate)

// ================================
// FEATURE FLAGS
// ================================
#define QUAT        // Quaternion rotation data
#define EULER       // Euler angles (roll, pitch, yaw)
#define ACCEL       // Linear acceleration
#define BATTERY     // Battery monitoring
#define LED         // LED control and status indication
#define LIGHT       // Light sensor (VCNL4040 - proximity & ambient)
#define BUTTON      // Button inputs (GPIO 5, 7)
#define PING        // Periodic ping/heartbeat
#define IP          // IP address announcement
#define UPTIME      // Uptime reporting

// ================================
// HARDWARE DEFINITIONS
// ================================
#define BNO08X_RESET -1

// I2C pins
#define I2C_SDA 8
#define I2C_SCL 9

// Battery
#define BATTERY_PIN 4
#define USB_DETECT_PIN 0

// LED
#define LED_PIN 10
#define LED_BRIGHTNESS 5  // 0-10 (set 0 to save battery)

// ================================
// NETWORK CONFIGURATION
// ================================
#define BASE_ADDRESS "/codecell"   // OSC base address
#define DEVICE_INDEX 1             // Device ID (for multiple devices)
#define STREAM_RATE_HZ 100         // OSC data transmission rate (Hz)

// ================================
// SENSOR READ RATES
// ================================
#define IMU_READ_RATE_HZ 100       // IMU sensor read rate (Hz)
#define LIGHT_READ_RATE_HZ 50      // Light sensor read rate (Hz)
#define BATTERY_READ_RATE_HZ 5     // Battery check rate (Hz)

#ifdef PING
#define PING_RATE_MS 1000   // Heartbeat interval (ms)
#endif

#ifdef IP
#define IP_RATE_MS 10000    // IP announcement interval (ms)
#endif

#ifdef UPTIME
#define UPTIME_RATE_MS 1000 // Uptime report interval (ms)
#endif

// ================================
// CHANGE DETECTION
// ================================
#define QUAT_CHANGE_THRESHOLD 0.01f     // Min quaternion change to send
#define EULER_CHANGE_THRESHOLD 0.5f     // Min Euler angle change (degrees)
#define ACCEL_CHANGE_THRESHOLD 0.1f     // Min acceleration change (m/s²)
#define ACCEL_NOISE_DEADZONE 0.5f       // Noise floor for idle filtering (m/s²)
#define BATTERY_SMOOTHING 0.03f         // EMA smoothing factor (5Hz sampling, 6.7s time constant)
#define BATTERY_STEP_THRESHOLD_MV 200   // Voltage step detection for USB events (mV)
#define BATTERY_CHANGE_THRESHOLD_MV 10  // Min voltage change to send (mV, ~1.4% granularity)
#define PROXIMITY_CHANGE_THRESHOLD 20   // Min proximity change to send
#define AMBIENT_CHANGE_THRESHOLD 5      // Min ambient light change to send
#define WHITE_CHANGE_THRESHOLD 5        // Min white light change to send
#define LIGHT_SMOOTHING 0.2f            // EMA smoothing factor

// Battery voltage thresholds
#define USB_VOLTAGE 4180                // Detect USB connection - above max LiPo charge 4.2V (mV)
#define MIN_BATTERY_VOLTAGE 3350        // Low battery warning threshold (mV)

#endif // CONFIG_H
