#!/usr/bin/env bash
xrandr | grep VGA1 | grep -q disconnected
if [[ ${PIPESTATUS[2]} -eq 0 ]] 
then
	xrandr --output VGA1 --off
else
	xrandr --output VGA1 --auto --right-of LVDS1 --rotate left
	xrandr --output LVDS1 --primary
fi
