# file and directory operations
alias ls='ls --color=auto --group-directories-first'
alias la='ls -A'
alias ll='ls -Ghtl'
alias mkdir='mkdir -pv'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# Grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# system information
alias df='df -ahT --total'
alias du='du -achd 1 | sort -h'
alias free='free -mht'
alias ps='ps auxf'

# Networking
alias ping='ping -c 4'

# Utilities
alias cat='bat'
alias cal='ncal -bM'

mcd() { mkdir "$1" && cd "$1"; }
mcp() { mkdir "$1" && cp "${@:2}" "$1"; }
