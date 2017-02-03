#!/bin/sh

export LESS='--ignore-case -g -M --quit-if-one-screen -R -w --window=-5 -X'
    # Default Less options
    # g: Only highlight the last search (perf)
    # M: be more verbose than more (long prompt)
    # R: Output ANSI "color" escape sequences in "raw" form
    # w: Highlights  the  first  "new"  line after a forward
    # X: Avoid useless termcap init
export LESSHISTFILE='/dev/null' # Prevent Less history

