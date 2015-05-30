#!/bin/sh

IN="eDP1"
EXT="HDMI2"

xrandr --output $IN --auto --primary --output $EXT --auto --$1-of $IN
./auto_wallpaper.sh
