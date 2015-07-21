# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.

# History functions
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

# Terminal configuration
shopt -s checkwinsize
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
# color
test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
#completion
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
#  Set up git 
for fName in $HOME/.profile_scripts/*
do
 . $fName
done

PS1='[35m-- \u[33m|\h[35m\n \\_ \w[33m$(__git_ps1 "|%s")[0m\n'
EDITOR=vim
GIT_PS1_SHOWDIRTYSTATE=true

# For HUBOT on slack add the token here and uncomment
# export HUBOT_SLACK_TOKEN=

export HISTSIZE HISTFILESIZE PS1 EDITOR PATH GIT_PS1_SHOWDIRTYSTATE 

