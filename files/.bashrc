export EDITOR=vim
export VISUAL=vim

export SVN_EDITOR=vim
export GIT_EDITOR=vim

export PS1='\w \@ \$ '

set -o vi

# General Aliases

alias v="mvim"
alias e="mvim"
alias edit="mvim"

alias g="git"
alias s="svn"

# Ruby/Rails Aliases

alias r="rails"
alias be="bundle exec"

# Pull in local bashrc file for computer-specific settings

if [ -f ~/.bashrc_local ]; then
        . ~/.bashrc_local
fi

