#! /bin/bash

## Autostart script for dwm

### Start window compositioner
# Used for transparency and other effects.
picom -b

### Restore wallpaper
nitrogen --restore

### Set auto repeat delay for key-presses.
xset r rate 275

### Enable Tap-to-click
xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1

## Run Simple X Hot-Key Daemon
(cd "$HOME" && . ./.config/sh/.shrc && sxhkd) &

### Populate status info
slstatus &

### Setup ssh-agent
# It works as follows:
# Start the agent and store the setup code to .cache
# shrc will source the setup code and things should work.
ssh-agent -s | head -n-1 > "$HOME"/.cache/ssh/agent &
