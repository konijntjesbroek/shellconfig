# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

for fName in $HOME/.profile_scripts/*
do
 . $fName
done

if [ -d $HOME/bin ]; then
  PATH="$HOME/bin:$PATH"
fi
if [ -d $HOME/local/bin ]; then
  PATH="$HOME/local/bin:$PATH"
fi

PS1='[35m-- \u[33m|\h[35m\n \\_ \w[33m$(__git_ps1 "|%s")[0m\n'
EDITOR=vim
GIT_PS1_SHOWDIRTYSTATE=true

export PS1 EDITOR PATH GIT_PS1_SHOWDIRTYSTATE
