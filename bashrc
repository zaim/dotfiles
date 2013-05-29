
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
PATH=$PATH:/usr/local/share/npm/bin

# Colors
BLUE="\[\033[34m\]"
CYAN="\[\033[36m\]"
RESET="\[\033[0m\]"

# Prompt
PS1="${CYAN}\w${RESET}\n$ "
[[ -f ~/.bash_prompt ]] && . ~/.bash_prompt
