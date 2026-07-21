# CodeCell

Real-time sensor streaming from CodeCell (ESP32-C3 / C6) to Max/MSP over OSC.

## Hardware

- [CodeCell C3](https://microbots.io/products/codecell) or [CodeCell C6](https://microbots.io/products/codecell-c6) — BNO085 IMU, VCNL4040 light/proximity sensor
- USB-C cable (data-capable, not charge-only)
- Optional: LiPo battery, GPIO buttons

## Requirements

### Arduino IDE
Version 2.0 or later — https://www.arduino.cc/en/software

### ESP32 Arduino Core (3.x)
Install ESP32 board support → [CodeCell Arduino Setup](https://microbots.io/pages/learn-codecell#arduino-setup).

### Libraries
Install via Sketch → Include Library → Manage Libraries:

| Library | Author | Required by |
|---------|--------|-------------|
| CodeCell | Microbots | codecell-main |
| Adafruit BNO08x | Adafruit | codecell-dev |
| OSC | Adrian Freed / Yotam Mann | both |

## Setup

### 1. Add your WiFi and OSC settings

The firmware needs your WiFi network and the IP address of the computer running Max.
These live in a file called `secrets.h`, kept separate from the code so your password is never shared when you send someone the project.

1. In Finder, open the `arduino/` folder and **duplicate** `secrets.template.h`.
2. Move the copy into the project folder you're using (`arduino/codecell-main/`) and **rename it to** `secrets.h`.
3. Open `secrets.h` in any text editor (e.g. TextEdit) and fill in:

   | Field | What to enter |
   |-------|---------------|
   | `SECRET_SSID` | your WiFi network name |
   | `SECRET_PASSWORD` | your WiFi password |
   | `SECRET_IP` | the IP address of the computer running Max |
   | `SECRET_OUTPORT` | port Max listens on (default `8000`) |
   | `SECRET_INPORT` | port the device listens on (default `9000`) |

   > Find your computer's IP in **System Settings → Network → Wi-Fi → Details**.
   > Both devices must be on the **same WiFi network**.

### 2. Upload the firmware

Two firmware variants live under `arduino/`: **`codecell-main`** uses the official CodeCell library, **`codecell-dev`** uses a custom implementation. 

1. Open `arduino/codecell-main/codecell-main.ino` in the Arduino IDE.
2. **Tools → Board** → select your CodeCell: `ESP32C3 Dev Module` (C3) or `ESP32C6 Dev Module` (C6).
3. Plug the CodeCell in with a data USB-C cable, then **Tools → Port** → select it.
4. Click **Upload** (→). When it finishes, the board joins WiFi and starts streaming over OSC.

### 3. Open the Max patch

1. Open `max/codecell-main.maxpat`.
2. Max receives on the port you set as `SECRET_OUTPORT` (default `8000`).

> **Dev patch only:** `codecell-dev.maxpat` uses the shared scripts in `max/js/`.
> If you see `js` file-not-found errors, add that folder to Max's search path:
> **Options → File Preferences → +**, select `max/js`, then save.

## License

See [LICENSE](LICENSE).
