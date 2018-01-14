"" Load plugins
call plug#begin(g:nvim_config_path.'/plugins')


" Misc
Plug 'vim-scripts/tlib'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/mru.vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'jremmen/vim-ripgrep'

" Snippets
" Plug 'garbas/vim-snipmate'
" Plug 'scrooloose/snipmate-snippets'
" Plug 'honza/vim-snippets'
" Plug 'Shougo/neosnippet'
" Plug 'Shougo/neosnippet-snippets'

" Editing
Plug 'terryma/vim-multiple-cursors'
Plug 'terryma/vim-expand-region'
Plug 'amix/open_file_under_cursor.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
" Plug 'maxbrunsfeld/vim-yankstack'
" Plug 'jiangmiao/auto-pairs'
" Plug 'Raimondi/delimitMate'
Plug 'easymotion/vim-easymotion'

" Navigation
Plug 'corntrace/bufexplorer'
Plug 'ctrlpvim/ctrlp.vim'

" UI Stuff
Plug 'scrooloose/nerdtree'
Plug 'mbbill/undotree', { 'on': ['UndotreeShow', 'UndotreeToggle'] }
Plug 'kshenoy/vim-signature'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'taohex/lightline-buffer'

" Zen
Plug 'junegunn/goyo.vim'
Plug 'amix/vim-zenroom2'

" Language support
Plug 'tpope/vim-markdown', { 'for': 'markdown' }
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'nvie/vim-flake8', { 'for': 'python' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
" Plug 'jelera/vim-javascript-syntax', { 'for': 'javascript' }
Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
" Haskell
" Plug 'neovimhaskell/haskell-vim'
Plug 'Twinside/vim-haskellConceal', { 'for': 'haskell' }
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'keith/swift.vim', { 'for': 'swift' }

" Programming Tools
Plug 'scrooloose/syntastic'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
" Plug 'Shougo/echodoc.vim'
Plug 'sbdchd/neoformat'
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'godlygeek/tabular'


" Themes
Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'
Plug 'lifepillar/vim-solarized8'

"" Done loading
call plug#end()
