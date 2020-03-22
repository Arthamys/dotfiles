#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

PATH="$PATH:~/.bin"
PATH="$PATH:/home/san/.scripts"

alias l='ll'
alias ls='ls --color'
alias ll='ls --color -l'
alias la='ls --color -la'
alias _='sudo'
alias oktamer='i3lock -i $HOME/Pictures/1469599716541.png'
alias v='nvim'
alias vi='nvim'
alias im='nvim'
alias vom='nvim'
alias bim='nvim'
alias cim='nvim'
alias svim='sudo nvim'
alias ne='emacs -nw'
alias sl='ls'
alias mc='make -C build'
alias mm='make && make clean'
alias amke='make'
alias kmae='make'
alias eamk='make'
alias cls='clear && ls'
alias ccc='gcc -Wall -Wextra -Werror'
alias gpt='g++ -W -Wall'
alias gpp='gpt'
alias gerp='grep'
alias bat='acpi --battery'
alias gnomewifi='env XDG_CURRENT_DESKTOP=GNOME gnome-control-center'
