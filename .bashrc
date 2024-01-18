#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# Command prompt
PS1='\[\e[0m\]\u\[\e[0m\]@\[\e[0m\]\h\[\e[0m\]\w\[\e[0m\](\[\e[0m\]$(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2)\[\e[0m\])\[\e[0m\]$ \[\e[0m\]' 

# ssh-agent
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi

if [[ ! "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi

# Poetry
export PATH="/home/safinwasi/.local/bin:$PATH"
source /usr/share/nvm/init-nvm.sh

# Wine
export WINEPREFIX=~/win64

# Go
export GOPATH="/home/safinwasi/go"
export PATH=$PATH:$GOPATH/bin

# Android
export PATH=$PATH:"/home/safinwasi/coding/apks/android-UpsideDownCake"

# Git config for bare files
alias config='/sbin/git --git-dir=/home/safinwasi/.cfg/ --work-tree=/home/safinwasi'

# QT Wayland
export QT_QPA_PLATFORM=wayland

# Nvim
alias vim='nvim'

# Git Aliases
alias gd='git branch -d'
alias gb='git checkout -b'

export EDITOR='nvim'
export OPENER='rifle'
export JETTY_HOME='/home/safinwasi/coding/java/jetty-home-11.0.15'
export VAGRANT_HOME='/home/safinwasi/storage/safinwasi/.vagrant/'
