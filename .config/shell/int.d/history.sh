#!/bin/sh

export HISTFILE=${XDG_CACHE_HOME:-$HOME'/.cache'}'/shell/history'

alias histfa='chmod u+w $HISTFILE; sleep 1; fc -W; chmod u-w $HISTFILE'
    # Force history append
alias histfe='chmod u+w $HISTFILE; $EDITOR $HISTFILE; chmod u-w $HISTFILE'
    # Force history edit
alias histime='fc -il 1'

