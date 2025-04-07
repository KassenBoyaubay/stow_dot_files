#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.bin/bash_functions.sh

alias ls='lsd --color=auto --icon never'
alias cat='bat'
alias grep='grep --color=auto'
alias vivaldi="vivaldi"
alias waybar-reload="pkill waybar && hyprctl dispatch exec waybar"
PS1='[\u@\h \W]\$ '

# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/Henry/.lmstudio/bin"
