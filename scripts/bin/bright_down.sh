#!/bin/bash
brightness=$(cat /sys/class/backlight/intel_backlight/brightness)

new_value=$(bc <<< "$brightness - 5")
if [ $new_value -gt "0" ]; then
  $(light -U 5)

fi
