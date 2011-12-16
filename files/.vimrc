set nocompatible

call pathogen#infect()


filetype plugin indent on

colorscheme rdark

syntax enable

set showmode
set showcmd
set showtabline=2

set wildmenu
set wildmode=list:longest

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
  set transparency=1
  set gfn=Monaco:h14
endif

" Command-T

" Map Command-T
nnoremap <silent> :t :CommandT<CR>
nnoremap <silent> :b :CommandTBuffer<CR>

let g:CommandTAcceptSelectionMap = '<C-t>'
let g:CommandTAcceptSelectionTabMap = '<CR>'

