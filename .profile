#!/bin/sh

export EDITOR=vim
export VISUAL=vim
export PAGER=less
export BROWSER=firefox

export LOGNAME="${LOGNAME:-"$(logname)"}"
export HOSTNAME="${HOSTNAME:-"$(uname -n)"}"

# XDG fix for proper home dir
export CARGO_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/cargo"
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
export PATH="$PATH:$CARGO_HOME/bin"

# Default Less options
# g: only highlight the last search (perf)
# M: be more verbose than more (long prompt)
# R: output ANSI "color" escape sequences in "raw" form
# w: highlights  the  first  "new"  line after a forward
export LESS='--ignore-case -g -M -R -w --window=-5'

# Prevent Less history
export LESSHISTFILE=/dev/null

# Launch firefox in wayland mode
export MOZ_ENABLE_WAYLAND=1

if test "$(tty)" = '/dev/tty1'; then
    exec ssh-agent sway
fi

