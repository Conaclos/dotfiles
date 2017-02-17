#!/bin/sh

alias dd='dd status=progress'

alias ls='command ls --color=auto' # Enable colors only where supported
alias lh='command ls -Alhv --color=always --time-style=long-iso'
    # Display all items in natural order
    # Enable colors anytime

alias mv='mv -i'
    # Ask before to erase an existing target

alias rmcdir='cd ..; rmdir $OLDPWD || cd $OLDPWD'
    # Remove current directory if empty

