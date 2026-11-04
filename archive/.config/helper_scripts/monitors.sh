#!/bin/sh
IN=eDP1
EXT=DP2-3
if (xrandr |grep "$EXT connected" && xrandr |grep "$IN connected")
then
	autorandr docked

	nitrogen "home/lukasz/.config/wallpapers/wallpaper.png" --set-scaled
fi
