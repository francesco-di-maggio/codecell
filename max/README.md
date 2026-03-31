# Max/MSP

Two Max patches for receiving and processing CodeCell sensor data over OSC.

| Patch | Pairs with |
|-------|------------|
| `codecell-main.maxpat` | `arduino/codecell-main/` |
| `codecell-dev.maxpat` | `arduino/codecell-dev/` |

## Setup

1. Flash CodeCell with the matching Arduino firmware
2. Open the corresponding patch in Max/MSP 8 or later
3. Confirm UDP ports match your `secrets.h`:
   - Receive on the port set as `SECRET_OUTPORT` (default: 8000)
   - Send on the port set as `SECRET_INPORT` (default: 9000)

## JS Objects

Shared JavaScript objects are in `js/`. See [`js/README.md`](js/README.md).
