#!/bin/sh

if test -z "$XDG_RUNTIME_DIR"; then
    HISTFILE='/dev/null'
else
    HISTFILE="$XDG_RUNTIME_DIR"'/shell-history'
fi

alias histime='fc -il 1'

