set nocompatible

set t_Co=256

call pathogen#infect()

if has("autocmd")
  filetype plugin indent on
end

colorscheme wombat256

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

set laststatus=2

set showtabline=2

autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

" Disable search highlighing by pressing Return
:nnoremap <CR> :nohlsearch<cr>

" ARROW KEYS ARE UNACCEPTABLE
map <Left> :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up> :echo "no!"<cr>
map <Down> :echo "no!"<cr>

map ; :
" Control-Space to Leave Insert Mode
imap <c-Space> <esc>

" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else, do completion.
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

runtime ftplugin/man.vim

nmap <leader>ff :FufFile **/<CR>
nmap <leader>fr :FufRenewCache <CR>
nmap <leader>ft :tabnew <bar>:FufFile **/<CR>
nmap <leader>r :source ~/.vimrc<CR>

map <F5> :sort<CR>
map <S-F5> :sort u<CR>

au BufRead,BufNewFile *.rabl setf ruby

" MacVim Options
if has("gui_running")
  set guioptions=-t
  set transparency=1
  set gfn=Monaco:h14
endif

" For vim-ruby-doc Browser Opening
let g:ruby_doc_command='open'

