#!/usr/bin/bash

# ~/.profile: executed by bash for login shells.
#=== ---- ==== ---- ==== ---- ==== ---- ==== ---- ==== ---- ==== ---- ==== ---- 
#   created by: Arlo Gittings
#   created on: 2021-04-27
#   last modified: 2021-07-18
#=== ---- ==== ---- ==== ---- ==== ---- ==== ---- ==== ---- ==== ---- ==== ---- 

# environment variables
CONF="${HOME}/.config/bash"
DOCS="${HOME}/docs"
HISTFILESIZE=2000
HISTSIZE=1000
PATH="${PATH}:${HOME}/bin"
export CONF DOCS HISTFILESIZE HISTSIZE PATH

# shell options
shopt -s histappend
shopt -s checkwinsize

# handling text stuff
EDITOR="/usr/bin/nvim"
PAGER="/usr/bin/less"
eval "$(lesspipe.sh)"
export EDITOR PAGER

# configure prompts
. ${CONF}/prompts

# load the secret magics
. ${CONF}/keys

# source psuedo-commands
. ${CONF}/aliases
. ${CONF}/functions
