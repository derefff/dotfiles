#!/bin/sh
IN=eDP-1
EXT=DP-2-2
if (xrandr |grep "$EXT connected" && xrandr |grep "$IN connected")
then
	autorandr docked

	nitrogen "home/lukasz/.config/wallpapers//wallpaper.png" --set-scaled
fi
