" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all the buffers
map <leader>ba :bufdo bd<cr>

" ALT-]
noremap ‘ :bnext<cr>
" ALT-[
noremap “ :bprevious<cr>


" Toggle paste mode on and off
noremap <leader>pp :setlocal paste!<cr>

noremap <leader>cc :botright cope<cr>

" Ctrl-p buffer
nnoremap <C-T> :CtrlPBuffer<cr>

" Insert mode newline (like c-enter)
inoremap <leader>nn <C-O>o

" Line movement
nnoremap <c-up> :m .-2<cr>
nnoremap <c-down> :m .+1<cr>

" Reselect region after indent
vnoremap > >gv
vnoremap < <gv
