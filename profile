#!/usr/bin/bash

#=== ---- ==== ---- ==== ---- ==== ---- ==== ---- ==== ---- ==== ---- ==== ---- 
# 	~/.profile: executed by bash for login shells.
# 	created by: Arlo Gittings
#	created on: 2021-04-27
# 	last modified: 2021-07-14
#=== ---- ==== ---- ==== ---- ==== ---- ==== ---- ==== ---- ==== ---- ==== ---- 

# environment variables
CONFIG="${HOME}/.config/bash"
DOCS="${HOME}/docs"
PATH="${PATH}:${HOME}/bin"
export PATH DOCS CONFIG

# shell options
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s checkwinsize
eval "$(lesspipe.sh)"

# configure prompts
. ${CONFIG}/prompts

# load the secret magics
. ${CONFIG}/keys

# source psuedo-commands
. ${CONFIG}/aliases
. ${CONFIG}/functions
