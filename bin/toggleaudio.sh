#!/usr/bin/env sh
if amixer -c 0 get Master | grep -q off
then
    amixer -q set Master unmute
    amixer -q set Front unmute
    amixer -q set Headphone unmute

else
    amixer -q set Master mute
fi
