
{
    zcompdump="${XDG_CACHE_HOME:-"$HOME/.cache"}/zsh/compdump"
    test -s "$zcompdump" &&
        { test -s "$zcompdump.zwc" || test "$zcompdump" -nt "$zcompdump.zwc"; } &&
            zcompile "$zcompdump"
} &! # Run in background and disown

. "${XDG_CONFIG_HOME:-"$HOME/.config"}/shell/login"

