set ts=4
set shiftwidth=4
"set expandtab
set ai
set nu
set ruler
set hlsearch
"set scrolloff=3 " Keep 3 lines below and above the cursor
set scrolloff=10

set rtp+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

set background=dark
hi Search cterm=NONE ctermfg=grey ctermbg=DarkBlue

" Remove whitespace on the end of all lines
autocmd BufWritePre *.js :%s/\s\+$//e
autocmd BufWritePre *.pl :%s/\s\+$//e

map <ESC>[H <Home>
map <ESC>[F <End>
imap <ESC>[H <C-O><Home>
imap <ESC>[F <C-O><End>
cmap <ESC>[H <Home>
cmap <ESC>[F <End>
