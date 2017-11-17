"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => neoformat
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Correct rustfmt config
let g:neoformat_rust_rustup_nightly = {
    \ 'exe': 'rustup',
    \ 'args': ['run', 'nightly', 'rustfmt', '--write-mode=plain'],
    \ 'stdin': 1,
    \ }

let g:neoformat_enabled_rust = ['rustup_nightly']


" Auto-fmt on save
augroup fmt
    autocmd!
    autocmd BufWritePre * undojoin | Neoformat
augroup END
