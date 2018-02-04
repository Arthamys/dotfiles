#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

PATH="$PATH:~/.bin"

alias ll='ls -l'
alias la='ls -la'
alias l='ll'
alias _='sudo'
