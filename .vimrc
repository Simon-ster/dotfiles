""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Owner:
"	Simon Millsap - @Simon-ster
"
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" How many lines VIM remembers
set history=1000

" tim pope pathogen
execute pathogen#infect()

filetype plugin on
filetype indent on 

""""""""""""""""""""""""""
"Colors & Syntax
""""""""""""""""""""""""
syntax on

set background=dark

try
	colorscheme desert
catch
endtry

set encoding=utf8


"7 lines to the cursor
set so=7

"Turn on Wild menu
set wildmenu

"searching features
set ignorecase
set smartcase
set hlsearch
set incsearch

"dont redraw when executing macros
set lazyredraw

"matching brackets
set showmatch

"turn off swapfiles:
set noswapfile

"remember file changes
try
    set undodir=~/.vim/temp_dirs/undodir
    set undofile
catch
endtry

"""""""""""""""""""""
"Tabs, indents, spaces
"""""""""""""""""""""
"use spaces
set expandtab

"be smart
set smarttab

set shiftwidth=4
set tabstop=4

set lbr
set tw=500

set ai "auto indent
set si "smart indent
set wrap "wrap lines

"close brackets plz
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

""""""""""""""""""""
"UI
""""""""""""""""""""
"Always show status line
set laststatus=2
"set number
set relativenumber
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c


autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal ts=2 sts=2 sw=2

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

