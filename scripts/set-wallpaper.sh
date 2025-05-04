#!/usr/bin/env bash

# You have to have two files foo--SCREEN1.png and foo--SCREEN2.png in ~/wallpapers

screen_size=$(xrandr | grep ' connected' | awk '{print $3}' | cut -f1 -d"+")

IFS=$'\n'
readarray -t <<<"$screen_size"
feh --bg-fill ~/wallpaper/foo--"${MAPFILE[0]}".png ~/wallpaper/foo--"${MAPFILE[1]}".png

