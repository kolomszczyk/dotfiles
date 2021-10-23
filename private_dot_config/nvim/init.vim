" g:python_host_prog = '/usr/bin/python2'
" g:python3_host_prog = '/usr/bin/python3'

set encoding=utf-8
set number relativenumber
syntax enable
set noswapfile
set scrolloff=7
set backspace=indent,eol,start

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix

let mapleader = ' '

call plug#begin('~/.vim/plugged')

" UI related
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'

" Better Visual Guide
Plug 'Yggdroot/indentLine'

" syntax check
Plug 'w0rp/ale'

" Autocomplete
" Plug 'ncm2/ncm2'
" Plug 'roxma/nvim-yarp'
" Plug 'ncm2/ncm2-bufword'
" Plug 'ncm2/ncm2-path'
" Plug 'ncm2/ncm2-jedi'

" Formater
Plug 'Chiel92/vim-autoformat'

" Insert or delete brackets, parens, quotes in pair.
Plug 'jiangmiao/auto-pairs'

" NERDTree
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'

"A high-performance color highlighter for Neovim which has no external dependencies!
Plug 'norcalli/nvim-colorizer.lua'

Plug 'davidhalter/jedi-vim'

call plug#end()


colorscheme gruvbox

let g:airline_theme="powerlineish"

" NERDTree
let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
nmap <leader>t :NERDTreeToggle<CR>

" Tabs
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'
nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>
nmap <C-w> :bd<CR>


" vim-autoformat
noremap <F3> :Autoformat<CR>
" NCM2
" augroup NCM2
"     autocmd!
"     " enable ncm2 for all buffers
"     autocmd BufEnter * call ncm2#enable_for_buffer()
"     " :help Ncm2PopupOpen for more information
"     set completeopt=noinsert,menuone,noselect
"     " When the <Enter> key is pressed while the popup menu is visible, it only
"     " hides the menu. Use this mapping to close the menu and also start a new line.
"     inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
"     " uncomment this block if you use vimtex for LaTex
"     " autocmd Filetype tex call ncm2#register_source({
"     "           \ 'name': 'vimtex',
"     "           \ 'priority': 8,
"     "           \ 'scope': ['tex'],
"     "           \ 'mark': 'tex',
"     "           \ 'word_pattern': '\w+',
"     "           \ 'complete_pattern': g:vimtex#re#ncm2,
"     "           \ 'on_complete': ['ncm2#on_complete#omni', 'vimtex#complete#omnifunc'],
"     "           \ })
" augroup END

" Airline
let g:airline_left_sep  = ''
let g:airline_right_sep = ''
let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#error_symbol = 'E:'
let airline#extensions#ale#warning_symbol = 'W:'


" UI configuration
syntax on
syntax enable
" colorscheme
let base16colorspace=256
colorscheme base16-gruvbox-dark-hard
set background=dark
" True Color Support if it's avaiable in terminal
if has("termguicolors")
    set termguicolors
endif
if has("gui_running")
    set guicursor=n-v-c-sm:block,i-ci-ve:block,r-cr-o:blocks
endif



set number
set relativenumber
set hidden
set mouse=a
set noshowmode
set noshowmatch
set nolazyredraw

" Turn off backup
set nobackup
set noswapfile
set nowritebackup

" jedi-vim


let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_stubs_command = "<leader>s"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"

let g:jedi#popup_select_first = 1
