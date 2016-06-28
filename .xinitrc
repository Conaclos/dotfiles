#!/bin/sh

# use xresources
xrdb -merge ${XDG_CONFIG_HOME:-~/.config}/x11/.Xresources

# source X11 system scripts
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

# numeric lock
numlockx &

# background settings
feh --no-fehbg --recursive --randomize --bg-scale \
    ${XDG_DATA_HOME:-~/.local/share}/wallpaper/*

# wm/app launncher based on the first argument
# use ```startx ~/.xinitrc g``` or ```xinit g``` for launching ```g```
# default: i3
exec ${1:-i3}

