" Color scheme and syntax
set nocompatible
filetype off
syntax enable
colorscheme darkblue


" sensible defaults
set t_Co=256
set expandtab
set tabstop=4
set shiftwidth=4
set number
set nobackup
set nowritebackup
set noswapfile
set autoindent
set backspace=indent,eol,start
set ffs=unix,dos
set nocompatible
set laststatus=2
set encoding=utf-8
set nowrap
set colorcolumn=80
set list
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<


" ignore plugin indent changes
filetype plugin on


" remap window/tab controls
map <C-t>t :tabnext<CR>
map <C-t>l :tabnext<CR>
map <C-t>h :tabprev<CR>
map <C-t>o :tabedit .<CR>


" set syntax for .vue files, Vue.js
au BufRead,BufNewFile *.vue :set filetype=html
