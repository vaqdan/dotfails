# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# enable Vim mode
#set -o vi

# history settings
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
HISTIGNORE="ls:cd:pwd"
shopt -s histappend

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

# set Neovim as default editor
export EDITOR=nvim
export VISUAL=$EDITOR

# set the location of the Java home folder
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64

# add the location of the compiler and other Java development tools
export PATH=$PATH:$JAVA_HOME/bin

# add local bin to PATH
if [[ ! "$PATH" =~ "$HOME/.local/bin" ]]; then
  export PATH=$HOME/.local/bin:$PATH
fi

# Random color script
colorscript random

# Bash insulter
if [ -f /etc/bash.command-not-found ]; then
    . /etc/bash.command-not-found
fi

# initialize Startship
if command -v starship &> /dev/null; then
  eval "$(starship init bash)"
fi
