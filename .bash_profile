# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

#source /etc/bash_completion.d/git
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

set -o vi
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="auto"

export REMOTE_STATUS=1
# source /usr/share/cs-prompt/csprompt

# export PS1='$HOSTNAME ${PWD#$HOME/}$ ' # overridden by PROMPT_COMMAND (in csprompt)
# export PROMPT_COMMAND='PS1=$(~/bin/myprompt)'
export GREP_OPTIONS='--exclude-dir=.svn'
export PATH=$PATH:~/bin:.
export ENSCRIPT='-U2 -T3 -E'
export EDITOR=vim
export PAGER=less
# export TERM=xterm-256color

alias r='fc -e -'
alias ls='ls -F'
alias rm='rm -i'
# export LANG=en_US.utf8
# export LINES COLUMNS
