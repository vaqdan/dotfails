# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# history settings
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

# update window size after each command
shopt -s checkwinsize

# set prompt
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# source aliases
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

# enable programmable completion
if ! shopt -oq posix; then
    [[ -f /usr/share/bash-completion/bash_completion ]] && . /usr/share/bash-completion/bash_completion
    [[ -f /etc/bash_completion ]] && . /etc/bash_completion
fi

# set neovim as default editor
export EDITOR=nvim
export VISUAL=$EDITOR

# add local bin to PATH
export PATH=$HOME/.local/bin:$PATH

# initialize Startship
eval "$(starship init bash)"
