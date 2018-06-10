if [[ $HOME = "/home/san" ]]
then

  setxkbmap -option compose:ralt
  setxkbmap -option caps:escape

fi

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# Path to your oh-my-zsh installation.
export ZSH=/home/san/.oh-my-zsh
export LOGNAME="bill"
export FULLNAME="Galilee Enguehard"
export TERM="xterm-256color"
export EPI_NAME="Galilee Enguehard"
export EPI_LOGIN="engueh_a"
#export TERM="xterm-256color"
#export COLORTERM='rxvt-unicode-256color'
export USER="Bill"
export VISUAL='vim'
export LC_ALL="en_US.UTF-8"
# Fixes blank windows for Java GUIs
export _JAVA_AWT_WM_NONREPARENTING=1

# Base 16 shell colors
#BASE16_SHELL="$HOME/Conf/base16-shell/base16-twilight.dark.sh"
#[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"
export PATH="$PATH:$HOME/.bin"
export PATH="$PATH:$HOME/.scripts"
export PATH="$PATH:$HOME/llvm-5.0/bin"
export PATH="$PATH:/usr/lib/jvm/intellij-jdk/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

fpath+=~/.zfunc
compinit

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls='ls --color'
alias vi='vim'
alias ne='emacs -nw'
alias oktamer='i3lock -i /home/san/Pictures/1469599716541.png'
alias szsh='source ~/.zshrc'
alias nezsh='ne ~/.zshrc'
alias sl='ls'
alias mm='make && make clean'
alias amke='make'
alias kmae='make'
alias eamk='make'
alias cls='clear && ls'
alias ccc='gcc -Wall -Wextra -Werror'
alias gpt='g++ -W -Wall'
alias gpp='gpt'
alias svim='sudo vim'
alias v='vim'
alias bim='vim'
alias vom='vim'
alias im='vim'
alias cim='vim'
alias gerp='grep'
alias dir='ls'
alias bat='acpi --battery'
alias mc='make -C build'
alias gnomewifi='env XDG_CURRENT_DESKTOP=GNOME gnome-control-center'
alias vimrc='vim ~/.vimrc'
alias ocaml='rlwrap ocaml'
alias ucos='ssh cs120scz@ieng6.ucsd.edu'
alias carbo='cargo build'
alias krgro='cargo run'
alias krgon='cargo new'
alias krgo='cargo'
alias skrgo='cargo test'
alias vagup='vagrant up'
alias vassh='vagrant ssh'
alias dotfiles='cd ~/Documents/config/dotfiles'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# OPAM configuration
. /home/san/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# NVM
source /usr/share/nvm/init-nvm.sh
