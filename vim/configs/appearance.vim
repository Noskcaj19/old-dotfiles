" Enable dark background
set background=dark

" Set colorscheme
if (g:is_ssh)
    set notermguicolors
    colorscheme molokai
else
    set termguicolors
    colorscheme solarized8
endif

" Set shortmess
" Disable intro message and the completion notice
set shortmess+=Ic
