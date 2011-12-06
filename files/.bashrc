export EDITOR=vim
export VISUAL=vim

export SVN_EDITOR=vim
export GIT_EDITOR=vim

export PS1='\w \@ \$ '

set -o vi

if [ -f ~/.bashrc_local ]; then
        . ~/.bashrc_local
fi

