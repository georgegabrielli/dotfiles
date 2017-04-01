
#!/bin/bash
max_brightness=$(cat /sys/class/backlight/intel_backlight/max_brightness)

brightness=$(cat /sys/class/backlight/intel_backlight/brightness)


new_value=$(bc <<< "$brightness+5")

if [ "$max_brightness" -gt "$new_value" ]; then
	$(light -A 5)
fi

