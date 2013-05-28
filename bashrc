
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Load aliases
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

# Prompt
PS1='\w\n$ '

