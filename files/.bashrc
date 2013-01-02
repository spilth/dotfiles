# General Shell Settings

export SHELL=bash
export PS1='\w \@ \$ '
export CLICOLOR=1
set -o vi

# Preferred Editor

export EDITOR=vim
export VISUAL=vim
export SVN_EDITOR=vim
export GIT_EDITOR=vim

# Editor Aliases

alias v="vim"
alias e="vim"
alias edit="vim"

# Version Control Aliases

alias g="git"
alias s="svn"

# Ruby/Rails Aliases

alias r="rails"
alias be="bundle exec"

# tmux Project Aliases

alias spilth="tmuxinator spilth"
alias devlog="tmuxinator devlog"

# Ruby Version Manager

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Terminal Multiplexer

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

# Pull in local bashrc file for computer-specific settings

if [ -f ~/.bashrc_local ]; then
  . ~/.bashrc_local
fi

