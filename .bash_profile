# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

# Bash command completion configuration
# Mac (homebrew)
if [ -x /usr/local/bin/brew ]; then
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi
fi

for name in docker docker-compose; do
  . $HOME/bin/completion/$name
done

# vi-bindings at bash prompt
set -o vi

# -- NEW PROMPT
if [ -f ~/.bash-git-prompt/gitprompt.sh ]
then
  # keep hostname "short but meaningful"
  # if a proper fqdn, strip off the last 2 domain pieces (domain.tld)
  export GIT_CUSTOM_HOST=$(echo $HOSTNAME | sed -e '/\..*\./!s/\..*//' -e '/\..*\./s/\.[^.]*\.[^.]*$//' )
  export GIT_PROMPT_ONLY_IN_REPO=0
  export GIT_PROMPT_THEME=Custom
  source ~/.bash-git-prompt/gitprompt.sh
else
  export PS1="\u@\h \w\$ "
fi

# -- OLD PROMPT
# export REMOTE_STATUS=1
# export PROMPT_COMMAND='PS1=$($HOME/bin/myprompt)'
# Git prompt specific settings
# export GIT_PS1_SHOWDIRTYSTATE=1
# export GIT_PS1_SHOWSTASHSTATE=1
# export GIT_PS1_SHOWUNTRACKEDFILES=1
# export GIT_PS1_SHOWUPSTREAM="auto"

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
