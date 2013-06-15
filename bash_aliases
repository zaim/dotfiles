
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
alias play='open -a /Applications/VLC.app $1'

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
alias gp='git push'

# Functions

# mkdir and cd to it
function mkcd () {
  mkdir $1 && cd $1
}

# download $1 from the web
# and save it in file $2
function dl () {
  curl -L -o $2 $1
}

# go to a project sub-dir
function p () {
  workon $1
  [[ -n "$2" ]] && cd $2
  clear
}

