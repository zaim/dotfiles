
# Shortcuts
alias ..='cd ..'
alias cd..='cd ..'
alias cdp='cdproject'
alias cls='clear'
alias df='df -H'
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
alias git=hub
alias g=git
#alias gb='git branch'
#alias gs='git status'
#alias gl='git log --color=auto'
#alias gd='git diff --color=auto'
#alias ga='git add'
#alias gc='git commit'
#alias gp='git push'
#alias gch='git checkout'
#alias gcm='git commit -m'
#alias gca='git commit -a'
#alias gcam='git commit -a -m'
#alias gsedit='git status --porcelain | sed "s/^.[A-Z\?].//" | xargs -o vim -p'

# GNU coreutils (from homebrew)
#alias ls='gls --color --group-directories-first -h'
alias ll='ls -lX'
alias la='ls -lA'
alias lt='ls -lt'
alias lj='ll --hide="node_modules" --hide="bower_components"'

# AppEngine
alias dev_appserver=dev_appserver.py
alias appcfg=appcfg.py

# docker-vagrant
alias dockerv=docker-vagrant

# ack
alias acki='ack -i'

# using vim as pager
alias vless=/usr/local/share/vim/vim74/macros/less.sh

# npm run as build tool
alias run='npm run'

# Functions

function ls () {
  opts="--color --group-directories-first --human-readable"
  if [ -f package.json -a -d node_modules ]; then
    opts="${opts} --hide=node_modules"
  fi
  gls ${opts} $*
}

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

