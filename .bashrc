# ~/.bashrc: executed by bash(1) for non-login shells.

# History functions
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

# PATH
if [ -d $HOME/bin ]; then
  PATH="$HOME/bin:$PATH"
fi
if [ -d $HOME/local/bin ]; then
  PATH="$HOME/local/bin:$PATH"
fi

# For HUBOT add token here and uncomment
# export HUBOT_SLACK_TOKEN=
export PATH HISTSIZE HISTFILESIZE
