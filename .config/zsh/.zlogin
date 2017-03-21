#!/bin/zsh

{
    zcompdump=${XDG_CACHE_HOME:-$HOME/.cache}'/zsh/compdump'
    if test -s "$zcompdump" &&
        (! test -s $zcompdump'.zwc' ||
            test $zcompdump -nt $zcompdump'.zwc'); then

        zcompile "$zcompdump"
    fi
} &! # Run in background

. ${XDG_CONFIG_HOME:-$HOME/.config}/shell/login

