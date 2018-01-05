# Should be sourced after zle and compinit


if
    test -r '/usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'
then
    . '/usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'
fi


# General
# -------

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
    # main: default
    # brackets: Match bracket and parenthesis


# Path
# ----

ZSH_HIGHLIGHT_STYLES[globbing]='fg=246,'

