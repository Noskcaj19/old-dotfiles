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
Plug 'garbas/vim-snipmate'
Plug 'scrooloose/snipmate-snippets'
Plug 'honza/vim-snippets'

" Editing
Plug 'terryma/vim-multiple-cursors'
Plug 'terryma/vim-expand-region'
Plug 'amix/open_file_under_cursor.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'maxbrunsfeld/vim-yankstack'

" Navigation
Plug 'corntrace/bufexplorer'
Plug 'ctrlpvim/ctrlp.vim'

" UI Stuff
Plug 'scrooloose/nerdtree',  { 'on':  'NERDTreeToggle' }
Plug 'mbbill/undotree'
Plug 'kshenoy/vim-signature'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'taohex/lightline-buffer'

" Zen
Plug 'junegunn/goyo.vim'
Plug 'amix/vim-zenroom2'

" Language support
Plug 'tpope/vim-markdown'
Plug 'fatih/vim-go'
Plug 'nvie/vim-flake8'

" Programming Tools
Plug 'scrooloose/syntastic'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/echodoc.vim'
Plug 'sbdchd/neoformat'


" Themes
Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'


"" Done loading
call plug#end()
