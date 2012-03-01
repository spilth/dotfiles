# General Shell Settings

export SHELL=bash
export PS1='\w \@ \$ '
set -o vi

# Preferred Editor

export EDITOR=vim
export VISUAL=vim
export SVN_EDITOR=vim
export GIT_EDITOR=vim

alias v="vim"
alias e="vim"
alias edit="vim"

# Version Control Aliases

alias g="git"
alias s="svn"

# Ruby/Rails Aliases

alias r="rails"
alias be="bundle exec"

# Ruby Version Manager

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

# Terminal Multiplexer

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

# Pull in local bashrc file for computer-specific settings

if [ -f ~/.bashrc_local ]; then
        . ~/.bashrc_local
fi

