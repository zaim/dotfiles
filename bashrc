
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# bash completion
_prefix='/usr/local'
if [ -f ${_prefix}/etc/bash_completion ]; then
  . ${_prefix}/etc/bash_completion
fi

# Load aliases
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

# Paths
PATH=$PATH:"/Applications/Android Studio.app/sdk/tools"
PATH=$PATH:"/Applications/Android Studio.app/sdk/platform-tools"
PATH=$PATH:/usr/local/share/npm/bin
PATH=$PATH:/usr/local/sbin
PATH=$PATH:~/.gem/ruby/1.8/bin
PATH=$PATH:~/bin

# Prompt
PS1="\w\n$ "
[[ -f ~/.bash_prompt ]] && . ~/.bash_prompt

# NVM
[[ -f ~/Projects/nvm/nvm.sh ]] && . ~/Projects/nvm/nvm.sh

# Other vars
export EDITOR=vim
export ANDROID_PROJECTS_HOME=~/Projects
export ANDROID_DEFAULT_PKG=com.zaimbakar

# virtualenvwrapper
export WORKON_HOME=~/.virtualenvs
export PROJECT_HOME=~/Projects
. /usr/local/bin/virtualenvwrapper.sh

# GO
export GOROOT=/usr/local/opt/go
export GOPATH=~/Projects/go
PATH=$PATH:$GOPATH/bin

