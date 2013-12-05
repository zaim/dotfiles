
# Shortcuts
alias ..='cd ..'
alias cd..='cd ..'
alias cdp='cdproject'
alias cls='clear'
alias df='df -H'
alias ls='ls -G'
alias la='ls -lA'
alias ll='ls -lh'
alias lt='ls -lt'
alias l='ls'
alias mkdir='mkdir -pv'
alias play='open -a /Applications/VLC.app $1'
alias m=make

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
alias gca='git commit -a -m'
alias gp='git push'

# AppEngine
alias dev_appserver=dev_appserver.py
alias appcfg=appcfg.py

# docker-vagrant
alias dv='docker vagrant'

# Functions

# mkdir and cd to it
function mkcd () {
  mkdir $1 && cd $1
}

# download $1 from the web
# and save it in file $2
function dl () {
  if [ -n "$2" ]; then
    curl "$1" -L -o $2
  else
    curl "$1" -L -O
  fi
}

# go to a project sub-dir
function p () {
  if [ -d "$WORKON_HOME/$1" ]; then
    workon $1
    [[ -n "$2" ]] && cd $2
  else
    cd "$PROJECT_HOME/$1"
  fi
}

# Android

# create
function android-create () {
  if [ $# -ne 1 ];then
    echo "Usage: android-create NAME"
    return
  fi
  name=$1
  id=`echo $name | tr '[:upper:]' '[:lower:]'`
  pkg=${ANDROID_DEFAULT_PKG:-com.example}
  android create project \
  --target 1 \
  --name $name \
  --path ./$name \
  --activity MainActivity \
  --package ${pkg}.${id}
}

