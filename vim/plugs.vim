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
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-vinegar'
Plug 'mhinz/vim-startify'
Plug 'junegunn/vim-github-dashboard'

" Navigation
Plug 'ctrlpvim/ctrlp.vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Programming utilities
Plug 'w0rp/ale'
Plug 'maximbaz/lightline-ale'
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'majutsushi/tagbar'

"" Snippets
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'

" Programming language support
"" Rust
Plug 'rust-lang/rust.vim'
Plug 'qnighy/lalrpop.vim'
"" Haskell
Plug 'Twinside/vim-haskellConceal', { 'for': 'haskell' }
"" Go
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'zchee/deoplete-go', { 'do': 'make'}
"" Python
Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'zchee/deoplete-jedi'

" Themes
Plug 'altercation/vim-colors-solarized'
Plug 'lifepillar/vim-solarized8'
Plug 'tomasr/molokai'
Plug 'ajh17/Spacegray.vim'
Plug 'dracula/vim', { 'as': 'dracula' }


"" Finish loading
call plug#end()
