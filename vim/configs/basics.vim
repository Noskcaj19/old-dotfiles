" Basic necessities

" Big history
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Autoread external changes
set autoread

" Set <leader> to ,
let mapleader = ","
let g:mapleader = ","

" Fast save keybind
nmap <leader>w :w!<cr>

" Enable wild menu
set wildmenu

" Add ignores
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif


" Allow hidden buffers
set hid

" Enable mouse
set mouse=a

" Improved backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Smarter searching
set ignorecase
set smartcase

" Search result highlighting
set hlsearch

" Enable incremental searching (modern like)
set incsearch

" Enable lazy drawing
set lazyredraw

" Enable marker folding
set foldmethod=marker

" Enable regular magic
set magic


" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


" Disable text wrapping
set nowrap

" Keep cursor 5 chars away from left and right while scrolling
set sidescrolloff=5

" Keep cursor 7 lines from bottom and top
set scrolloff=7


" Disable backup, cause git
set nobackup
set nowb
set noswapfile

" Return to last edit position when opening files 
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

try
    set undodir=~/.files/vim/temp_dirs/undodir
    set undofile
catch
endtry

" Bclose command
" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction
