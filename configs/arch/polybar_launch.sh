#!/bin/bash

# If all your bars have ipc enabled, you can use 
#polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar

# Launch top
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar top 2>&1 | tee -a /tmp/polybar1.log & disown

echo "Bars launched..."