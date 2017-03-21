#!/usr/bin/zsh

# Sourced in interactive shells.
# May contain commands to set up aliases, functions, options, key bindings, etc.


# autoload zsh modules when they are referenced
zmodload -a zsh/stat zstat
zmodload -a zsh/zpty zpty

. $ZDOTDIR'/options.zshrc' # Zsh options
. $ZDOTDIR'/prompt.zshrc' # Zsh prompt
. $ZDOTDIR'/keybindings.zshrc' # Zle key bindings

. ${XDG_CONFIG_HOME:-$HOME/.config}'/shell/int'

