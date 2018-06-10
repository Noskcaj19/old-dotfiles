"" Set plugin folder
call plug#begin(g:nvim_config_path . '/plugins')

" Editing utilities
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'

" UI
Plug 'itchyny/lightline.vim'
Plug 'taohexxx/lightline-buffer'
Plug 'kshenoy/vim-signature'

" Navigation
Plug 'ctrlpvim/ctrlp.vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Programming utilities
Plug 'w0rp/ale'
Plug 'maximbaz/lightline-ale'
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

"" Snippets
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'

" Programming language support
"" Rust
Plug 'rust-lang/rust.vim'
"" Haskell
Plug 'Twinside/vim-haskellConceal', { 'for': 'haskell' }
"" Go
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'zchee/deoplete-go', { 'do': 'make'}

" Themes
Plug 'altercation/vim-colors-solarized'
Plug 'lifepillar/vim-solarized8'
Plug 'tomasr/molokai'

" Random
Plug 'wakatime/vim-wakatime'

"" Finish loading
call plug#end()
