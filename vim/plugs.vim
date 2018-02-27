"" Set plugin folder
call plug#begin(g:nvim_config_path . '/plugins')

" UI
Plug 'itchyny/lightline.vim'
Plug 'taohex/lightline-buffer'
Plug 'kshenoy/vim-signature'


" Programming utilities
Plug 'w0rp/ale'
Plug 'maximbaz/lightline-ale'


" Themes
Plug 'altercation/vim-colors-solarized'

"" Finish loading
call plug#end()
