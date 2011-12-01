set nocompatible

call pathogen#infect()

filetype plugin indent on

colorscheme slate

syntax enable

set showmode
set showcmd
set showtabline=2

set wildmenu
set wildmode=full

set ruler

set tabstop=2
set autoindent
set expandtab
set wrap

set hlsearch
set ignorecase
set smartcase

set spelllang=en_us

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

runtime ftplugin/man.vim

if has("gui_running")
  set guioptions=-t
  set transparency=5
  set gfn=Monaco:h14
endif

