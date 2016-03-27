#!/bin/bash
brightness=$(cat /sys/class/backlight/acpi_video0/brightness)

new_value=$(bc <<< "$brightness - 1")
if [ $new_value -gt "0" ]; then
  echo "echo $new_value > /sys/class/backlight/acpi_video0/brightness" | sudo bash

fi
