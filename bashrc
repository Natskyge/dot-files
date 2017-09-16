# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

alias ufetch='~/ufetch.sh'

export FZF_DEFAULT_COMMAND='ag --depth 10 --hidden --ignore .git -f -g ""'

export LC_ALL=da_DK.UTF-8

set -o vi
