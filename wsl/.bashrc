#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grp='grep --color=auto'
alias vite='npm run dev -- --host'
alias run='npm run serve'
PS1='[\u@\h \W]\$ '
alias anifetch='python3 $HOME/.config/anifetch/anifetch.py -f "$HOME/.config/media/NeuroKuru.mp4" -r 10 -W 54 -H 45 -c "--symbols solid --fg-only" -ff'

export STARSHIP_CONFIG=~/.config/starship.toml

eval "$(starship init bash)"
eval "$(zoxide init --cmd cd bash)"
eval "$(fzf --bash)"

export DISPLAY=:0

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
