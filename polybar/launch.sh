#!/bin/sh
#

LOG_FILE="/home/shiva/.config/polybar/polybar_log.txt"

if [ -z "$(pgrep -x polybar)" ]; then
    BAR="main"
    for m in $(polybar --list-monitors | cut -d":" -f1); do
	MONITOR=$m polybar --reload $BAR >> "$LOG_FILE" 2>&1 &
        sleep 1
    done
else
    polybar-msg cmd restart
fi


#MONITOR=$m polybar --reload $BAR &


