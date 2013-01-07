set nocompatible          " Don't use vi compatibility

colorscheme railscasts    " Set the color scheme

syntax enable             " Turn on syntax highlighting

call pathogen#infect()    " Run the Pathogen Plugin manager

filetype plugin indent on " Enable file type detection and plugin/indent files

if $TMUX == ''
  set clipboard+=unnamed
endif

set noswapfile            " Don't use swap files
set shortmess+=I          " Don't display intro message
set t_Co=256              " Set terminal's number of colors

set laststatus=2          " Always show the status line
set showtabline=2         " Always show the tab line

set showmode              " Show mode in status bar
set showcmd               " Show current vim command in status bar
set showmatch             " Show matching parens/brackets

set wildmenu              " Enable tab-completion for command-line mode
set wildmode=list:longest " Complete till longest common string. 

set ruler                 " Show line and column number of cursor
set number                " Show line numbers along left side of window

set backspace=2           " Allow backspacking over everything

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

set foldmethod=indent     " Lines with equal indent for a fold
set foldnestmax=10        " Maximum nesting of folds for indent and syntax
set nofoldenable          " All folds are open by default
set foldlevel=1

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

" \s to toggle spell checking
map <leader>s :set spell!<CR>

" \l to toggle hidden characters
nmap <leader>l :set list!<CR>

" \p to toggle paste mode
nmap <leader>p :set paste!<CR>

" FuzzyFinder Shortcuts
nmap <leader>ff :FufFile **/<CR>
nmap <leader>fr :FufRenewCache <CR>
nmap <leader>ft :tabnew <bar>:FufFile **/<CR>

" Sort with F5
map <F5> :sort<CR>

" Sort and remove duplicates with Shift-F5
map <S-F5> :sort u<CR>

" \= to autoformat entire document and return to where you were
map <leader>= mzggVG='z

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

if has("autocmd") " If vim was compiled with the automcmd feature

  " Automatically set filetype to ruby when loading or creating a .rabl file
  au BufRead,BufNewFile *.rabl setf ruby

end

" For vim-ruby-doc Browser Opening
let g:ruby_doc_command='open'

