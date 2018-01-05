# Sourced in interactive shells.
# May contain commands to set up aliases, functions, options, key bindings, etc.


# autoload zsh modules when they are referenced
zmodload -a zsh/stat zstat
zmodload -a zsh/zpty zpty

. "$ZDOTDIR/options.zsh" # Zsh options
. "$ZDOTDIR/prompt.zsh" # Zsh prompt
. "$ZDOTDIR/keybindings.zsh" # Zle key bindings
. "$ZDOTDIR/comp.zsh" # Completion enhancements

for l_plugin in "$ZDOTDIR/plugins"/*.zsh; do
    . "$l_plugin"
done
unset l_plugin

. "${XDG_CONFIG_HOME:-"$HOME/.config"}/shell/int"

