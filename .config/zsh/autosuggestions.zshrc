#!/bin/zsh

# Should be sourced after zle and compinit


if
    test "$(tput colors)" -ge 88 && # 88+ colors terminals
    test -r '/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh'
then
    . '/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh'
fi

