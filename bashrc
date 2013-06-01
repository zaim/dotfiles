
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# bash completion
_prefix=`brew --prefix`
if [ -f ${_prefix}/etc/bash_completion ]; then
  . ${_prefix}/etc/bash_completion
fi

# Load aliases
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

# Paths
PATH=~/.gem/ruby/1.8/bin:/usr/local/share/npm/bin:/usr/local/share/python:$PATH

# Prompt
PS1="\w\n$ "
[[ -f ~/.bash_prompt ]] && . ~/.bash_prompt

# NVM
[[ -f ~/Projects/nvm/nvm.sh ]] && . ~/Projects/nvm/nvm.sh

# virtualenvwrapper
export WORKON_HOME=~/.virtualenvs
export PROJECT_HOME=~/Projects
. /usr/local/share/python/virtualenvwrapper.sh

