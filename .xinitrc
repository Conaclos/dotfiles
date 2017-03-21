#!/bin/sh

# Sourced on `startx` and `xinit`.
# Display manager don't source it.

test -r $HOME'/.Xresources' && xrdb -merge $HOME'/.Xresources'
    # use xressources if any

if test -d '/etc/X11/xinit/xinitrc.d'; then
    # source X11 system scripts
    for f in /etc/X11/xinit/xinitrc.d/?*.sh; do
        test -x "$f" && . "$f"
    done; unset f
fi

numlockx &
    # numeric lock

feh --no-fehbg --recursive --randomize --bg-scale \
    ${XDG_DATA_HOME:-$HOME'/.local/share'}/wallpaper/*
    # background settings

exec ${1:-'i3'}
    # wm/app launncher based on the first argument
    # use `startx ~/.xinitrc g` or `xinit g` for launching `g`
    # default: i3wm

