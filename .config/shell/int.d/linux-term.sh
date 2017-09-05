#!/bin/sh

if test "$TERM" = 'linux'; then

    alias fbterm="$HOME"'/.local/bin/fbterm-bi "${XDG_DATA_HOME:-$HOME/.local/share}"/wallpaper/light-wave.jpg'

    # 256-colors support throught fbterm
    alias mutt='command fbterm env TERM=fbterm mutt'
    alias vim='command fbterm env TERM=fbterm vim'
fi

