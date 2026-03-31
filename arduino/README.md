# Arduino

Two firmware projects for CodeCell. See each subfolder for setup and configuration.

- `codecell-main/` — uses the official CodeCell library (recommended starting point)
- `codecell-dev/` — custom modular implementation using Adafruit BNO08x

## Credentials

Copy `secrets.template.h` to `secrets.h` inside your chosen project folder and fill in your WiFi and OSC settings. `secrets.h` is gitignored — never commit it.
