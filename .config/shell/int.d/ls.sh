#!/bin/sh

eval $(command dircolors -b ${XDG_CONFIG_HOME:-$HOME/.config}/dir_colors)
    # Ls utility colors

alias ls='command ls --color=auto' # Enable colors only where supported
alias lh='command ls -Alhv --color=always'
    # More readable.
    # Enable colors anytime

alias lsx='lh *(*)' # List only eXecutables
alias lsd='lh -d *(/)' # List directories
alias lsn="lh -rt *(D.om[1,8])" # List the 8 newest files, including dot-files
alias lsdn='lsd -rt *(/om[1,5]) .*(D/om[1,5])'
    # List the 5 newest dir and 5 newest dot-dir

