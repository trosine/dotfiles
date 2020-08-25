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
  export GIT_PROMPT_ONLY_IN_REPO=0
  export GIT_PROMPT_THEME=Custom
  source ~/.bash-git-prompt/gitprompt.sh
else
  export PS1="\u@\h \w\$ "
fi

# for MacOS > Catalina:
export BASH_SILENCE_DEPRECATION_WARNING=1

export GREP_OPTIONS='--exclude-dir=.svn'
export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH:~/bin:."
export ENSCRIPT='-U2 -T3 -E'
export EDITOR=vim
export PAGER=less
# export TERM=xterm-256color

alias r='fc -e -'
alias ls='ls -F'
alias rm='rm -i'
# export LANG=en_US.utf8
# export LINES COLUMNS
