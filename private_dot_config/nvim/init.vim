" inictial/ first config file read by nvim

source ~/.config/nvim/user_setting.vim

source ~/.config/nvim/coc.vim 

source ~/.config/nvim/vim-plug-config.vim

source ~/.config/nvim/plugins.vim




" c++ syntax highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1


" cpp linting
"
"let g:syntastic_cpp_checkers = ['cpplint']
let g:syntastic_c_checkers = ['cpplint']
let g:syntastic_cpp_cpplint_exec = 'cpplint'
" The following two lines are optional. Configure it to your liking!
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" grubbox colorsheme 
set background=dark " or light if you want light mode
colorscheme gruvbox
