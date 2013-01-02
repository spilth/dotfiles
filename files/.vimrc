set nocompatible          " Don't use vi compatibility

call pathogen#infect()    " Run the Pathogen Plugin manager

if has("autocmd")
  filetype plugin indent on
end

colorscheme wombat256

syntax enable

set clipboard=unnamed

set noswapfile            " Don't use swap files
set shortmess+=I          " Don't display startup messages
set t_Co=256              " Set terminal's number of colors

set showmode              " Show mode in status bar
set showcmd
set showtabline=2         " Always show the tab line

set wildmenu              " Enable tab-completion for command-line mode
set wildmode=list:longest " Complete till longest common string. 

set ruler                 " Show line and column number of cursor
set number                " Show line numbers along left side of window

set tabstop=2             " Tabs are 2 spaces
set shiftwidth=2          " Auto indent with 2 spaces
set expandtab             " Turn tabs into spaces
set autoindent            " Maintain indentation when starting a new line
set wrap                  " Wrap long lines

set incsearch             " Show first match as you type a new search
set hlsearch              " Highlight all search matches
set ignorecase            " Ignore letter case when searching using lowercase
set smartcase             " Don't ignore case if search has uppercase letters

set spelllang=en_us       " Use en_us dictionary for spell check

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

set laststatus=2

" === MAPPINGS ===

" Easily reload .vimrc with \r
nmap <leader>r :source ~/.vimrc<CR>

" Disable Arrow Keys
map <left> <nop>
map <right> <nop>
map <up> <nop>
map <down> <nop>
"imap <left> <nop>
"imap <right> <nop>
"imap <up> <nop>
"imap <down> <nop>

" Toggle spell checking with \s
map <leader>s :set spell!<CR>

" Disable search highlighting by pressing Return
nnoremap <CR> :nohlsearch<cr>

" Move between splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" \h and \v to create horizontal and vertical splits
nmap <leader>h :new<CR>
nmap <leader>v :vnew<CR>

" \l to toggle hidden characters
nmap <leader>l :set list!<CR>

" FuzzyFinder Shortcuts
nmap <leader>ff :FufFile **/<CR>
nmap <leader>fr :FufRenewCache <CR>
nmap <leader>ft :tabnew <bar>:FufFile **/<CR>

" Sort with F5
map <F5> :sort<CR>

" Sort and remove duplicates with Shift-F5
map <S-F5> :sort u<CR>

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

au BufRead,BufNewFile *.rabl setf ruby

" For vim-ruby-doc Browser Opening
let g:ruby_doc_command='open'

