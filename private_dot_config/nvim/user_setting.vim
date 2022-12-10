
set nocompatible

filetype plugin on

" encoding
set encoding=utf-8

" numbers set number
set relativenumber

" spaces / indentation set tabstop=4
set shiftwidth=4
set autoindent

" mouse
set mouse=c

" colors
syntax enable
"colorscheme slat

" saving files
set noswapfile
set nobackup
set nowritebackup
set fileformat=unix


" dont go to border of terminal
set scrolloff=7


silent! nmap <C-p> :NERDTreeToggle<CR>


command HIDENUM     :set nonumber | :set norelativenumber
command HIDENUMOFF  :set   number | :set   relativenumber
