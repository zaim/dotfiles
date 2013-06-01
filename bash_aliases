
# Shortcuts
alias ..='cd ..'
alias cd..='cd ..'
alias cls='clear'
alias df='df -H'
alias dl='curl -LO'
alias ls='ls -G'
alias la='ls -lA'
alias ll='ls -lh'
alias lt='ls -lt'
alias l='ls'
alias mkdir='mkdir -pv'

# Safety
alias cp='cp -i'
alias ln='ln -i'
alias mv='mv -i'
alias rm='rm -i'

# tmux
alias tml='tmux list-sessions'
alias tmk='tmux kill-session'

# git
alias g='git'
alias gs='git status'
alias gl='git log --color=auto'
alias gd='git diff --color=auto'
alias ga='git add'
alias gc='git commit'
alias gcm='git commit -m'

# Functions

# mkdir and cd to it
function mkcd () {
  mkdir $1 && cd $1
}

