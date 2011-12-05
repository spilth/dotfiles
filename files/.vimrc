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
set number

set tabstop=2
set autoindent
set expandtab
set wrap

set hlsearch
set incsearch

set ignorecase
set smartcase

set spelllang=en_us

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

runtime ftplugin/man.vim

" MacVim Options
if has("gui_running")
  set guioptions=-t
  set transparency=5
  set gfn=Monaco:h14
endif

" NERDTree
let NERDTreeShowHidden=1

" NERDTree - Automatically start NERDTree if no file provided on command line
function! StartUp()
  if 0 == argc()
    NERDTree
  end
endfunction

autocmd VimEnter * call StartUp()

