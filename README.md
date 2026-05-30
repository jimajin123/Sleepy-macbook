# Sleepy MacBook

simple SleepWatcher automation for macOS to reduce battery drain while sleeping.

This setup will automatically:

- Closes selected apps before sleep
- Disables Bluetooth before sleep
- Optionally disables Wi-Fi before sleep
- Restores everything when the Mac wakes up

Designed and tested on Apple Silicon Macs.

---

## Why?

My MacBooks experience unexpected battery drain during sleep due to:

- Chat applications maintaining network connections
- Bluetooth devices
- Background services
- Frequent DarkWake events

This project automates bcs im lazy, using SleepWatcher.

---

## Features

### Sleep Actions

- Quit Beeper Desktop
- Quit Messages
- Quit FaceTime
- Disable Bluetooth
- Disable Wi-Fi (optional)

### Wake Actions

- Re-enable Bluetooth
- Re-enable Wi-Fi
- Reopen selected applications

---

## Requirements

Install Homebrew:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install dependencies:

```bash
brew install sleepwatcher
brew install blueutil
```

---

## Installation

Copy the scripts:

```bash
cp scripts/sleep.sh ~/.sleep
cp scripts/wakeup.sh ~/.wakeup
```

Make them executable:

```bash
chmod 700 ~/.sleep
chmod 700 ~/.wakeup
```

Start SleepWatcher:

```bash
brew services start sleepwatcher
```

Restart after changes:

```bash
brew services restart sleepwatcher
```

---

## Example Sleep Script

```bash
#!/bin/bash

osascript -e 'quit app "Beeper Desktop"'
osascript -e 'quit app "Messages"'
osascript -e 'quit app "FaceTime"'

/opt/homebrew/bin/blueutil --power 0
/usr/sbin/networksetup -setairportpower en0 off
```

---

## Example Wake Script

```bash
#!/bin/bash

/usr/sbin/networksetup -setairportpower en0 on
/opt/homebrew/bin/blueutil --power 1

open -a "Beeper Desktop"
open -a Messages
```

---

## Notes

Your Wi-Fi interface may not be `en0`.

Check it with:

```bash
networksetup -listallhardwareports
```

Example output:

```text
Hardware Port: Wi-Fi
Device: en0
```

---

## Future Improvements

- Save and restore previous Bluetooth state
- Save and restore previous Wi-Fi state
- App configuration file
- Sleep/Wake logging
- OneDrive support
- VPN auto-disconnect

---

## License

MIT License
