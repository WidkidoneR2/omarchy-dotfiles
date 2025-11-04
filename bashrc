# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/omarchy/default/bash/rc

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'
# Tokyo Night Bash Prompt - Custom with status indicator
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

set_prompt() {
    local EXIT="$?"
    
    # Status indicator (green checkmark or red X)
    if [ $EXIT -eq 0 ]; then
        STATUS="\[\e[1;32m\]✓\[\e[0m\]"
    else
        STATUS="\[\e[1;31m\]✗\[\e[0m\]"
    fi
    
    # Time in green
    TIME="\[\e[1;32m\][\t]\[\e[0m\]"
    
    # Username in cyan
    USER="\[\e[1;36m\]\u\[\e[0m\]"
    
    # Folder icon
    FOLDER="\[\e[1;35m\] \[\e[0m\]"
    
    # Current directory in blue
    DIR="\[\e[1;34m\]\w\[\e[0m\]"
    
    # Git branch in yellow
    GIT="\[\e[1;33m\]$(parse_git_branch)\[\e[0m\]"
    
    # Green arrow
    ARROW="\[\e[1;32m\]❯\[\e[0m\]"
    
    PS1="$STATUS $TIME $USER $FOLDER $DIR $GIT $ARROW "
}

PROMPT_COMMAND=set_prompt

# Load custom aliases
if [ -f ~/.bashrc_aliases ]; then
    . ~/.bashrc_aliases
fi

# Show system info on terminal startup
if [[ $- == *i* ]] && [[ -z "$TMUX" ]] && command -v /usr/bin/fastfetch &> /dev/null; then
    /usr/bin/fastfetch
fi