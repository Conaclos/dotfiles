#!/bin/sh

# use xresources
xrdb -merge ${XDG_CONFIG_HOME:-~/.config}/x11/.Xresources

# numeric lock
numlockx &

# background settings
feh --no-fehbg --recursive --randomize --bg-scale \
    ${XDG_DATA_HOME:-~/.local/share}/wallpaper/*

exec i3

