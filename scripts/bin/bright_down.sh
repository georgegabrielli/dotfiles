#!/bin/bash
brightness=$(cat /sys/class/backlight/intel_backlight/brightness)

new_value=$(bc <<< "$brightness - 5")
echo $new_value
if [ "$new_value" -gt "41"  ]; then
  $(light -U 5)

fi
