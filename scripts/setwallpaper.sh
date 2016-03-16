#!/bin/bash
wallpaperdir='$HOME/wallpaper'

files=($wallpaperdir/*)
randompic=`printf "%s\n" "${files[RANDOM % ${#files[@]}]}"`

gconftool-2 -t str --set /desktop/gnome/background/picture_filename "$randompic"
