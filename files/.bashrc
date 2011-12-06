export EDITOR=vim
export VISUAL=vim

export SVN_EDITOR=vim
export GIT_EDITOR=vim

export PS1='\w \@ \$ '

set -o vi

if [ -e ~/.bashrc_local ]
then
  source ~/.bashrc_local
fi

