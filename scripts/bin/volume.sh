#!/bin/bash


[[ $1 == "up" ]] && amixer set Master 5%+
[[ $1 == "down" ]] && amixer set Master 5%-
[[ $1 == "mute" ]] && amixer set Master toggle
volume=$(amixer -D pulse get Master | grep -o "\[.*%\]" | grep -o "[0-9]*" | head -n1)
[[ $(amixer -D pulse get Master | grep "\[off\]") ]] && volnoti-show -m $volume && exit
echo $volume
volnoti-show  $volume 
