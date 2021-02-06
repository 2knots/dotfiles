"------------ vim-plug ------------------
call plug#begin('~/.vim/plugged')

Plug 'tomasr/molokai'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'Lokaltog/vim-easymotion'
Plug 'jacoborus/tender.vim'

call plug#end()
"------------ vim-plug ------------------

"true color
if exists('+termguicolors')
  set termguicolors
  "let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
  "let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"
endif

"colorscheme
colorscheme molokai
"darker CursorLine
hi CursorLine guibg=#1c2627
"for 256color
hi Comment ctermfg=242
hi Visual ctermbg=237

"lightline setting
let g:lightline = {
      \ 'colorscheme': 'lightline_custom',
      \ 'inactive': {
      \ 'left': [['filename', 'modified']],
      \ 'right': [['lineinfo'], ['percent']]
      \ },
      \ 'tab': {
      \   'active': ['filename', 'modified'],
      \   'inactive': ['filename', 'modified']
      \ },
      \ 'tabline': {
      \   'right': [[]]
      \ },
      \ }

"Leader setting
let mapleader = "\<Space>"

"nerdcommenter setting {{{
"Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
"Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
"}}}

"easymotion setting
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
map <Leader>f <Plug>(easymotion-s2)

"setting for Fortran {{{
"free form by default
let fortran_free_source=1
"auto indent in do loop
let fortran_do_enddo=1
" }}}

"setting for Python {{{
if expand("%:e")=="py"
"execute script with F5
  nmap <F5> :!python %<CR>
endif
"}}}

"highlight the screen line of the cursor
set cursorline

"show match for partly typed search command
set incsearch

"ignore case when using a search pattern
set ignorecase

"override 'ignorecase' when pattern has upper case characters
set smartcase

"show the line number for each line
set number

"highlight all matches for the last used search pattern
set hlsearch

"always display status line
set laststatus=2

"a new window is put below the current one
set splitbelow

"a new window is put right of the current one
set splitright

"show (partial) command keys in the status line
set showcmd

"not display the current mode in the status line
set noshowmode

"show cursor position below each window
set ruler

"specifies what <BS>, CTRL-W, etc. can do in Insert mode
set backspace=indent,eol,start

"number of spaces a <Tab> in the text stands for
set tabstop=4

"number of spaces used for each step of (auto)indent
if expand("%:e")=="py"
  set shiftwidth=4
else
  set shiftwidth=2
endif

"a <Tab> in an indent inserts 'shiftwidth' spaces
set smarttab

"round to 'shiftwidth' for '<<' and '>>'
set shiftround

"expand <Tab> to spaces in Insert mode
set expandtab

"automatically set the indent of a new line
set autoindent

"do clever autoindenting
set smartindent

"split vertical with diffsplit by default
set diffopt=vertical

"not keep backup after overwriting a file
set nobackup

"automatically read a file when it was modified outside of Vim
set autoread

"not use a swap file for this buffer
set noswapfile

"specifies how command line completion works
"list:longest"	When more than one match, list all matches and complete till longest common string.
set wildmode=list:longest

"command-line completion shows a list of matches
set wildmenu

"character encoding used in Vim
set enc=utf-8

"character encoding for the current file
set fenc=utf-8

"use twice the width of ASCII characters
set ambiwidth=double

"Allow virtual editing in Visual block mode.
set virtualedit=block

"move by displayed line
noremap j gj
noremap k gk

"insert a blank line with O
nnoremap O :<C-u>call append(line('.'), '')<Cr>j

"cancel highlight with Esc Esc
nnoremap <Esc><Esc> :nohlsearch<CR><Esc>

"substitute Esc with ctrl-c
noremap <C-c> <Esc>
noremap! <C-c> <Esc>
nnoremap <C-c><C-c> :nohlsearch<CR><Esc>

"move to the beginning of the line with ctrl-h
noremap <C-h> 0

"move to the end of the line with ctrl-l
noremap <C-l> $

"go to the previous/next tab page with ctrl-p/n
nnoremap <C-p> :tabp<CR>
nnoremap <C-n> :tabn<CR>

"move the cursor in insert mode
inoremap <C-f> <Right>
inoremap <C-b> <Left>

"disable auto wrap and comment out
autocmd FileType * set formatoptions=q

