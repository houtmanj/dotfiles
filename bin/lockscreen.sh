#!/bin/bash

shopt -s nullglob
cd ~/.wallpaper

files=()
for i in *.png; do
	[[ -f $i ]] && files+=("$i")
done
range=${#files[@]}

((range)) && i3lock -c 000000 -i "${files[RANDOM % range]}"
