#!/usr/bin/zsh

# Should only contain widgets and zle key-bindings
# Use <Ctrl><v> in your terminal to know the hardcoded key
# Prefer use "standard" keys if possible
#
# terminfo[kcbt]    <Shift><Tab>
# terminfo[kdch1]   <Del>
# terminfo[knp]     <PageDown>
# terminfo[kpp]     <PageUp>

bindkey -e
    # Use emacs-like key bindings by default

bindkey "${terminfo[kdch1]}" delete-char
bindkey "${terminfo[kpp]}" up-line-or-history
bindkey "${terminfo[knp]}" down-line-or-history

# <Ctrl> Left/Right
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word


soft-reset() {
    tput reset
    zle redisplay
}
zle -N soft-reset
bindkey '^L' soft-reset
    # <Ctrl>l
    # Override clear command

defer-cmd-or-bg() {
    if test -z "$BUFFER"; then
        bg
        zle redisplay
    else
        # Defer command
        zle push-input
    fi
}
zle -N defer-cmd-or-bg
bindkey '^Z' defer-cmd-or-bg


# Sudo
# ----

sudo-toggle() {
    # Prepend command with sudo or sudoedit
    # or remove it if already there
    case "$BUFFER" in
        sudoedit*)
            LBUFFER=${LBUFFER#'sudoedit'}
            BUFFER=${BUFFER#'sudoedit'}
            LBUFFER=$VISUAL$LBUFFER
            ;;
        sudo*)
            LBUFFER=${LBUFFER#'sudo '}
            BUFFER=${BUFFER#'sudo '}
            ;;
        "$VISUAL"*)
            LBUFFER=${LBUFFER#$VISUAL}
            BUFFER=${BUFFER#$VISUAL}
            LBUFFER='sudoedit'$LBUFFER
            ;;
        *)
            LBUFFER='sudo '$LBUFFER
            ;;
    esac
}
zle -N sudo-toggle
bindkey '^@' sudo-toggle
    # <Ctrl><space>


# Command book
# ------------

cmd-menu() {
    # Open the menu then print the selected command.
    BUFFER=''
    LBUFFER=$(fzf < ${XDG_DATA_HOME:-$HOME'/.local/share'}'/shell/command_book')
}
zle -N cmd-menu
bindkey '²' cmd-menu


# Menu
# ----

zmodload -i zsh/complist
    # Make `menuselect` available
bindkey -M 'menuselect' "${terminfo[kcbt]}" reverse-menu-complete
    # <Shift><Tab> backwards menu completion
bindkey -M 'menuselect' '^o' accept-and-infer-next-history
    # <Ctrl><o> Accept completion and complete again

