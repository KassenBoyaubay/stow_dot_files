#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /usr/share/fzf/completion.bash
source /usr/share/fzf/key-bindings.bash
source ~/.bin/bash_functions.sh

alias ls='lsd --color=auto --icon never'
alias cat='bat'
alias grep='grep --color=auto'
alias waybar-reload="pkill waybar && hyprctl dispatch exec waybar"
PS1='[\u@\h \W]\$ '
alias screenshot='~/.bin/screenshots.sh'
alias img='qimgv'
# rmt.rs github
alias rm='rmt'
alias history='atuin history list'

# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/Henry/.lmstudio/bin"
unset -f ble/complete/auto-complete/source:atuin-history
function ble/complete/auto-complete/source:atuin-history {
  local suggestion
  suggestion=$(atuin search --cmd-only --limit 1 --search-mode prefix -- "$_ble_edit_str")
  [[ $suggestion == "$_ble_edit_str"?* ]] || return 1
  ble/complete/auto-complete/enter h 0 "${suggestion:${#_ble_edit_str}}" '' "$suggestion"
}
. "$HOME/.atuin/bin/env"

[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh
eval "$(atuin init bash)"
