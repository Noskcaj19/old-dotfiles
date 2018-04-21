function! s:set_background()
    if $COLORSCHEME_BACKGROUND == "light"                                                                                                         
        set background=light                                                                                                                      
    else                                                                                                                                          
        set background=dark                                                                                                                       
    endif                                                                                                                                         
endfunction                                                                                                                                       
                                                                                                                                                  
function! s:update_colorscheme()                                                                                                                  
    call s:set_background()                                                                                                                       
    exe "source " . g:plug_home . "/lightline.vim/autoload/lightline/colorscheme/solarized.vim"                                                   
    call lightline#init()
    call lightline#colorscheme()
    call lightline#update()
endfunction

command! Setlight let $COLORSCHEME_BACKGROUND="light" | call s:update_colorscheme()

command! Setdark let $COLORSCHEME_BACKGROUND="dark" | call s:update_colorscheme()

call s:set_background()


" set background=dark

if (g:is_ssh)
    colorscheme molokai
    let g:lightline_colorscheme="powerline"
else
    set background=dark
    colorscheme solarized8
    let g:lightline_colorscheme="solarized"
endif
