set runtimepath+=~/.dotfiles/vim/
if !isdirectory($HOME . "/.dotfiles/vim/plugins")
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set nocompatible

source ~/.dotfiles/vim/vimrcs/plugs.vim
