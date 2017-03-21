#!/usr/bin/zsh

# Should only contain Zsh options
# Options are case-insensitive


watch=(notme root)
    # Watch events for everyone, but me and root

# Auto url escaping
autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic


# History
# -------

setopt APPEND_HISTORY # Append history instead of rewrite this.

setopt HIST_FIND_NO_DUPS # Upon searching, don't display duplicas
setopt HIST_IGNORE_DUPS # Don't save command if the previous one is a duplica

setopt HIST_IGNORE_SPACE # Don't save commands starting with a space

setopt HIST_VERIFY
    # Whenever the user enters a line with history expansion,
    # don't execute the line; instead, perform history expansion
    # and reload the line into the editing buffer

setopt HIST_REDUCE_BLANKS
    # Remove useless blanks

setopt HIST_NO_STORE
    # Remove the history (fc -l) command from the history list when invoked


# Changing Directories
# --------------------

setopt AUTO_PUSHD # Make "cd" push the old dir onto the directory stack
setopt PUSHD_IGNORE_DUPS # Don't push the same dir twice
setopt PUSHD_SILENT # Don't print cd history after 'pushd'/'popd'
unsetopt PUSHD_TO_HOME # Don't push to $HOME when no argument is given


# Completion
# ----------

setopt COMPLETE_IN_WORD
    # Enable completion inside a word


# Expansion and Globbing
# ----------------------

setopt EXTENDED_GLOB
    # in order to use #, ~ and ^ for filename generation grep word
    # *~(*.gz|*.bz|*.bz2|*.zip|*.Z) -> searches for word not in compressed files
    # don't forget to quote '^', '~' and '#'!
setopt GLOB_DOTS
    # Don't require a leading dot in a filename to be matched explicitly


# Job Control
# -----------

setopt AUTO_RESUME # Try to resume existing job before creating a new process
unsetopt BG_NICE # Don't run background jobs at a lower priority
setopt CHECK_JOBS
    # Report background and suspended jobs before exiting a shell
    # Exit on second attempt
unsetopt FLOW_CONTROL # Disable flow control assigned to ^S/^Q
unsetopt HUP # Don't send HUP signal to sub-shell upon exit
setopt NOTIFY # Report status of background jobs immediately


# Prompting
# ---------

setopt PROMPT_SUBST # Enable PROMPT expansion


# Input/Output
# ------------

unsetopt CLOBBER
    # Disallow ‘>’ redirection to truncate existing files (safety)
    # Use ‘>!’ or ‘>|’ for this.

unsetopt CORRECT # Don't try to correct the spelling of commands

setopt INTERACTIVE_COMMENTS # Allow comments in interactive shells

unsetopt RM_STAR_SILENT # Query user before executing ‘rm *’ or ‘rm path/*’


# Expansion and Globbing
# ----------------------

setopt EXTENDED_GLOB
    # Treat '#', '~', and '^' as part of patterns for filename generation

