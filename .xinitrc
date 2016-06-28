#!/bin/sh

# use xresources
xrdb -merge ~/.Xresources

# numeric lock
numlockx &

# background settings
feh --no-fehbg --recursive --randomize --bg-scale ~/.local/share/wallpaper/*

exec i3

