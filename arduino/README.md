# CodeCell - Arduino Firmware

Real-time sensor streaming firmware for CodeCell (ESP32-C3 + BNO085 IMU).

## Quick Start

1. **Install Prerequisites** (see below)
2. **Copy and configure** `secrets.template.h` to `secrets.h` (for WiFi)
3. **Open** `codecell.ino` in Arduino IDE
4. **Select board** settings (see below)
5. **Upload** to CodeCell

## Prerequisites

### Arduino IDE
- **Version:** 2.0 or later
- **Download:** https://www.arduino.cc/en/software

### ESP32 Arduino Core
- **Version:** 3.x
- **Installation:**
  1. Open Arduino IDE
  2. Go to **File → Preferences**
  3. Add to "Additional Board Manager URLs":
     ```
     https://espressif.github.io/arduino-esp32/package_esp32_index.json
     ```
  4. Go to **Tools → Board → Boards Manager**
  5. Search "esp32" and install "esp32 by Espressif Systems" (version 3.x)

### Required Libraries

Install via **Sketch → Include Library → Manage Libraries**:

#### 1. CodeCell Library
- **Name:** CodeCell
- **Version:** 1.3.8 or later
- **Author:** Microbots
- **GitHub:** https://github.com/microbots-io/codecell

#### 2. OSC Library
- **Name:** OSC
- **Author:** Adrian Freed and Yotam Mann
- **GitHub:** https://github.com/CNMAT/OSC

## Board Configuration

Select these settings in **Tools** menu:

| Setting | Value |
|---------|-------|
| **Board** | ESP32C3 Dev Module |
| **USB CDC On Boot** | Enabled |
| **CPU Frequency** | 160 MHz |
| **Flash Mode** | QIO |
| **Flash Size** | 4MB |
| **Partition Scheme** | Minimal SPIFFS (1.9MB APP with OTA/190KB SPIFFS) |
| **Core Debug Level** | None (or "Error" for debugging) |
| **Erase All Flash** | Disabled (unless having issues) |

## Network Configuration

### 1. Create secrets.h
```bash
cp secrets.template.h secrets.h
```

### 2. Edit secrets.h
```cpp
// WiFi credentials
const char* ssid = "YourNetworkName";
const char* password = "YourPassword";

// Target device (computer receiving data)
IPAddress receiverIP(192, 168, 1, 100);  // Your computer's IP
const unsigned int receiverPort = 8000;   // Default: 8000
```

### Finding Your Computer's IP Address

**macOS:**
```bash
ifconfig | grep "inet " | grep -v 127.0.0.1
```

**Windows:**
```cmd
ipconfig
```
Look for "IPv4 Address" under your WiFi adapter.

**Linux:**
```bash
ip addr show
```

### Important Notes
- CodeCell and computer must be on the **same WiFi network** (for OSC mode)
- Use **2.4GHz WiFi** (ESP32-C3 doesn't support 5GHz)
- **secrets.h is gitignored** - safe to add credentials

## Uploading Firmware

1. **Connect CodeCell** via USB-C
2. **Select Port:** Tools → Port → (your CodeCell port)
3. **Click Upload** button (→) or press Ctrl+U / Cmd+U
4. **Wait** for compilation and upload (~30 seconds)
5. **Open Serial Monitor** (Tools → Serial Monitor or Ctrl+Shift+M)
6. **Set baud rate** to 115200

### Example Output
```
CodeCell v1.1.1
Connecting to WiFi...
Connected to WiFi: YourNetworkName
IP address: 192.168.1.42
Sending to: 192.168.1.100:8000
Initializing BNO085...
BNO085 initialized successfully
Ready - streaming at 50Hz
```

## Troubleshooting

### Upload Failed
- **Check USB cable** (needs data support, not just power)
- **Try different USB port**
- **Press and hold BOOT button** during upload
- **Set "Erase All Flash"** to "Enabled" once, then disable

### Port Not Found
- **Install CH340 drivers** if using clone board
- **Check Device Manager/System Info** to see if device detected
- **Try different cable** (data-capable USB-C)

### WiFi Connection Failed
- Verify **SSID and password** in secrets.h
- Check router has **2.4GHz enabled** (not 5GHz only)
- Move **closer to router** during testing
- Check router **allows new devices** (MAC filtering, guest network)

### I2C Errors at Boot
```
E (2717) i2c.master: I2C transaction unexpected nack detected
```
**This is normal!** BNO085 sensor takes ~2.7 seconds to boot. Error appears once, then sensor initializes successfully. Safe to ignore.

### I2C Timeout Errors During Operation
```
E (xxxxx) i2c.master: I2C transaction timeout detected
```
If you see this during operation:
1. Try disabling WiFi sleep: verify `WiFi.setSleep(false)` is in `connectWiFi()`
2. Check `SENSOR_RATE_HZ` is set to 50Hz or lower  
3. Report as issue on GitHub if persistent

### Compilation Errors

**Missing Library:**
```
fatal error: CodeCell.h: No such file or directory
```
→ Install CodeCell library via Library Manager

**Wrong ESP32 Core Version:**
```
'class WiFiClass' has no member named 'setHostname'
```
→ Update ESP32 core to version 3.x

**secrets.h not found:**
```
fatal error: secrets.h: No such file or directory
```
→ Copy `secrets.template.h` to `secrets.h`

## Configuration Options

### Enable/Disable Features

In `codecell.ino`, comment/uncomment defines:

```cpp
#define QUAT      // Quaternion rotation data
#define ACCEL     // Linear acceleration
#define BATTERY   // Power monitoring
#define BUTTONS   // GPIO button inputs
#define OSC       // OSC over WiFi (default protocol)
#define PING      // Heartbeat/keepalive messages (1Hz)
```

### Adjust Update Rates

```cpp
const int SENSOR_RATE_HZ = 50;   // Sensor read rate
```

**Lower rates = longer battery life:**
- 20Hz: 1h 15min runtime
- 25Hz: 1h 12min runtime
- 50Hz: 1h 4min runtime (default)

### WiFi Sleep Management

v1.1.1+ includes WiFi sleep configuration:

```cpp
WiFi.setSleep(false);  // Disable WiFi modem sleep
```

**Trade-offs:**
- **Disabled (default):** +20mA power consumption
- **Enabled:** Power saving, potential I2C timing interference

### Ping/Heartbeat Configuration

```cpp
const int PING_RATE_MS = 1000;  // Heartbeat interval (1Hz default)
```

Ping messages ensure receivers can detect device connectivity even when idle.

### Adjust Sensitivity

```cpp
const float QUAT_CHANGE_THRESHOLD = 0.02f;    // Quaternion sensitivity
const float ACCEL_CHANGE_THRESHOLD = 0.1f;    // Acceleration m/s²
const float ACCEL_NOISE_DEADZONE = 0.75f;     // Idle motion filter
```

**Higher thresholds = less transmission = longer battery life**

### Change Device Address

```cpp
const int DEVICE_INDEX = 1;               // Device identifier
const char* BASE_ADDRESS = "/codecell";   // Base address (OSC mode)
```

Useful when using multiple CodeCell devices simultaneously.

## Development Workflow

### 1. Edit Code
Make changes in `codecell.ino`

### 2. Verify
Click Verify button to check for errors without uploading

### 3. Upload
Click Upload button when ready to flash device

### 4. Monitor
Open **Serial Monitor** to see debug output and confirm operation

### 5. Test
Use Max/MSP patch or other OSC receiver (see `/max/README.md`)

## Battery Information

- **Capacity:** 150mAh (default CodeCell battery)
- **Runtime:** ~1.1 hours @ 50Hz
- **Charging:** Via USB-C (automatic)
- **Monitoring:** Real-time level, voltage, and runtime estimation

Update capacity in firmware if using different battery:
```cpp
const int BATTERY_CAPACITY_MAH = 150;  // Change to your battery's mAh
```

## Technical Highlights

### I2C Timeout Protection
Decoupled sensor reads from data transmission prevents communication delays from causing I2C timeouts:
```cpp
// Sensor reads - precise I2C timing at SENSOR_RATE_HZ
if (myCodeCell.Run(SENSOR_RATE_HZ)) {
  readSensors();
}

// Data transmission - independent timing at SENDER_RATE_MS
if (now - last_send >= SENDER_RATE_MS) {
  sendSensors();
}
```

Communication delays (WiFi congestion, retries) cannot interfere with sensor I2C communication.

### Quaternion Sign Continuity
Prevents orientation flips at antipodal points using dot product detection:
```cpp
float dot = qw*qw_ref + qx*qx_ref + qy*qy_ref + qz*qz_ref;
if (dot < 0.0f) {
  qw = -qw; qx = -qx; qy = -qy; qz = -qz;  // Flip for continuity
}
```

Ensures smooth continuous rotation without sudden jumps.

### Change-Based Transmission
Only sends data when sensors exceed thresholds:
- Quaternions: 0.02 Euclidean distance
- Acceleration: 0.1 m/s²
- Battery: Level or state changes

Reduces transmission overhead and power consumption while maintaining responsiveness.

## Performance Characteristics

- **Sensor read time:** 1-2ms
- **Transmission time:** 1-15ms (WiFi variable)
- **Loop cycle:** 20ms @ 50Hz
- **Typical latency:** 10-30ms (WiFi)
- **Total latency:** ~30-50ms (sensor to receiver)

## Hardware Pinout

| Function | GPIO Pin |
|----------|----------|
| Button 1 | GPIO 5 |
| Button 2 | GPIO 6 |
| I2C SDA | GPIO 8 |
| I2C SCL | GPIO 9 |
| Status LED | GPIO 10 |

## Version Information

See [CHANGELOG.md](../CHANGELOG.md) for version history and technical details.

## Advanced Topics

### Custom Messages (OSC Mode)
Add new messages in `sendOSC()` function:
```cpp
OSCMessage msg("/codecell/DEVICE_INDEX/custom");
msg.add(myValue);
bundle.add(msg);
```

### Multiple BNO085 Sensors
CodeCell board only has one I2C IMU. For multiple sensors, use multiple CodeCell boards with different `DEVICE_INDEX` values.

### Alternative Protocols
Comment out `#define OSC` and implement alternative output (Serial, MIDI, BLE) in `loop()`.

Serial, MIDI, and BLE protocols are planned for future releases.

## License

See [LICENSE](LICENSE) for full license details.