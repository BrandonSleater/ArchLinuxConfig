#!/bin/sh

EXT="HDMI2"
PHOTOS=~/Photos/Wallpapers

if (xrandr | grep "$EXT disconnected"); then
  feh --bg-scale $PHOTOS/elk.jpg
else
  feh --bg-scale $PHOTOS/elk.jpg --bg-scale $PHOTOS/cloud.jpg
fi

