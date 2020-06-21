#! /bin/bash

## Autostart script for dwm

### Start window compositioner
# Used for transparency and other effects.
picom -b

### Restore wallpaper
nitrogen --restore

### Set auto repeat delay for key-presses.
xset r rate 275

## Status_date
# Return a formatted date
function status_date {
	VAL="$(date +"%a %d %b %I:%M %p")"
	echo "$VAL"
	return 0
}

### Populate status info
while true;
do
	xsetroot -name "$(status_date)"
	sleep "$(echo $RANDOM | awk '{ print ($1 % 200)/100.0 }')"
done &

