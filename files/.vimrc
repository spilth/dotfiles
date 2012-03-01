set nocompatible

call pathogen#infect()

if has("autocmd")
  filetype plugin indent on
end

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
set shiftwidth=2

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

nmap <leader>ff :FufFile **/<CR>
nmap <leader>fr :FufRenewCache <CR>
nmap <leader>ft :tabnew <bar>:FufFile **/<CR>
nmap <leader>r :source ~/.vimrc<CR>

au BufRead,BufNewFile *.rabl setf ruby

" MacVim Options
if has("gui_running")
  set guioptions=-t
  set transparency=1
  set gfn=Monaco:h14
endif

" For vim-ruby-doc Browser Opening
let g:ruby_doc_command='open'

