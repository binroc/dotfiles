alias cl="clear"
alias ll="ls -lA"
alias db="distrobox"

export EDITOR=nvim

set -o vi

# Rename current terminal/tab
title() {
    printf '\033]0;%s\007' "$*"
}
