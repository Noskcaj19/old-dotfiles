colorscheme solarized

function Set_background()
    if $COLORSCHEME_BACKGROUND == "light"
        set background=light
    else
        set background=dark
    endif
endfunction

function Update_colorscheme()
    call Set_background()
    exe "source " . g:plug_home . "/lightline.vim/autoload/lightline/colorscheme/solarized.vim"
    call lightline#init()
    call lightline#colorscheme()
    call lightline#update()
endfunction

function Set_light()
    let $COLORSCHEME_BACKGROUND="light"
    call Update_colorscheme()
endfunction

function Set_dark()
    let $COLORSCHEME_BACKGROUND="dark"
    call Update_colorscheme()
endfunction

call Set_background()


" Enable syntax highlighting
syntax enable

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

set foldcolumn=1

set noshowmode

set number
set relativenumber

