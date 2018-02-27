"" Set plugin folder
call plug#begin(g:nvim_config_path . '/plugins')

" UI
Plug 'itchyny/lightline.vim'
Plug 'taohex/lightline-buffer'


" Themes
Plug 'altercation/vim-colors-solarized'

"" Finish loading
call plug#end()
