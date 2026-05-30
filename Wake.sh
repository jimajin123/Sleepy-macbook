#!/bin/bash

echo "$(date): Wake triggered" >> ~/sleepy-macbook.log

# Enable Wi-Fi
/usr/sbin/networksetup -setairportpower en0 on

# Enable Bluetooth
/opt/homebrew/bin/blueutil --power 1

# Reopen apps
open -a "Beeper Desktop"
open -a "Messages"
