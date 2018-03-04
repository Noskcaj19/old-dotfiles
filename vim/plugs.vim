"" Set plugin folder
call plug#begin(g:nvim_config_path . '/plugins')

" Editing utilities
Plug 'tpope/vim-surround'

" UI
Plug 'itchyny/lightline.vim'
Plug 'taohex/lightline-buffer'
Plug 'kshenoy/vim-signature'

" Navigation
Plug '/usr/local/opt/fzf'

" Programming utilities
Plug 'w0rp/ale'
Plug 'maximbaz/lightline-ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }

" Programming language support
Plug 'rust-lang/rust.vim'

" Themes
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'

"" Finish loading
call plug#end()
