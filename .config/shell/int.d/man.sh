
alias man='env LESS_TERMCAP_md="$(tput bold; tput setaf 1)"\
    LESS_TERMCAP_me="$(tput sgr0)"\
    LESS_TERMCAP_so="$(tput bold; tput rev; tput setaf 3)"\
    LESS_TERMCAP_se="$(tput sgr0)"\
    LESS_TERMCAP_us="$(tput bold; tput setaf 2)" man'

