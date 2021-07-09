#! /bin/bash

KILL_LOGS="/tmp/dwm-kill.log"

function LOGGED_KILL() {
    TARGET="$1"
    LOG_FORMAT="[$TARGET] %s \n"
    killall "$TARGET" 2>&1 > /dev/null | awk "{printf(\"$LOG_FORMAT\", \$0)}" >> "$KILL_LOGS"
}

## Autostart script for dwm
### cd into HOME
cd "$HOME" || exit

### Start window compositioner
# Used for transparency and other effects.
LOGGED_KILL picom
picom --daemon

### Restore wallpaper
nitrogen --restore

### Set auto repeat delay for key-presses.
xset r rate 275

### Enable Tap-to-click
# xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1

### Run dunst notification daemon
LOGGED_KILL dunst
dunst &

### Run Simple X Hot-Key Daemon
LOGGED_KILL sxhkd
(. ./.config/sh/shrc ; sxhkd 2> /tmp/sxhkd-error.log 1> /tmp/sxhkd.log) &

### Populate status info
#killall slstatus 2> /dev/null
#slstatus &
LOGGED_KILL dwm_bar.sh
~/Documents/suckless/dwm-bar/dwm_bar.sh &

### Setup ssh-agent
# It works as follows:
# Start the agent and store the setup code to .cache
# shrc will source the setup code and things should work.
LOGGED_KILL ssh-agent
ssh-agent -s | head -n-1 > "$HOME"/.cache/ssh/agent &
