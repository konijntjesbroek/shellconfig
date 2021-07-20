## Shell Configs
_created by_: Arlo Gitings  
_created on_: 2021-07-15  
_last modified_: 2021-07-18  
### Description
These are my config files for bash. I decided to modularize them after seeing a
GitHub gist where somebody decided to split out all of their aliases into a new
file. I had also used some special git command scripts in a prior incarnation
which helped to build out a better dev workflow. 
### Layout
- profile:
    - public environment variables
        - PATH: path to binaries
        - DOCS: path to documents
        - CONF: path to configs
    - shell options
        - history options
        - EDITOR: nvim 
        - PAGER: less, with lesspipe
    - externals
        - config prompts
        - load remote keys
        - load aliases
        - load functions
        - git tools
            - for prompt
            - functions to shorten push cycle
- prompts:
    - explaanation of various color depths
    - set color variables
    - set PS1
    - set PS2
    - export PS1 PS2
- keys:
    - set value for external sites
    - export keys
 - aliases:
    - vim -> neovim
    - add color for ls and grep
    - shortcuts for ls
    - shortcuts for git
    - timestamps
- functions:
    - backkups
    - git push chain
### Success Factors
