#!/sur/bin/zsh

# Should only contain prompt settings

prompt_delimiter() {
    (sudo -n true 2> /dev/null && echo '▸') || echo '>'
}

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:*' formats ' %F{8}%s(%F{2}%b%F{8})%f' '%a %F{3}%m%u%c'
zstyle ':vcs_info:*' actionformats ' %F{8}%s(%F{2}%b%F{8})%F{red}[%a]%f'

# Left prompt
PROMPT='%f%b'
PROMPT=$PROMPT'%F{8}%n%f'
    # username
PROMPT=$PROMPT' %F{3}%35<...<%~%f'
    # $PWD with substitution of $HOME with '~'
    # Truncate if too large and then use '...'
PROMPT=$PROMPT'${vcs_info_msg_0_}'
    # repository infos
PROMPT=$PROMPT'%(?.. %F{red}[%?])%f'
    # status $?
PROMPT=$PROMPT' $(prompt_delimiter) '
    # prompt delimiter

# Right prompt
RPROMPT='  %f%b'
RPROMPT=$RPROMPT'${vcs_info_msg_1_}'
    # repository infos
RPROMPT=$RPROMPT' %(1j. %F{8}(%F{2}%j%F{8})%f.)'
    # job number

precmd() {
    # Run before each prompt display
    vcs_info
}

