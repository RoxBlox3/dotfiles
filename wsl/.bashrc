#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grp='grep --color=auto'
alias vite='npm run dev -- --host'
PS1='[\u@\h \W]\$ '

export STARSHIP_CONFIG=~/.config/starship.toml

eval "$(starship init bash)"
eval "$(zoxide init --cmd cd bash)"
eval "$(fzf --bash)"

export PATH="$PATH:/home/yohan/.local/bin"
export DISPLAY=:0
