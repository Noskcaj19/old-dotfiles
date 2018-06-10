" Enable real time rust linting
let g:ale_linters = {}
let g:ale_linters.rust = []
" let g:ale_linters.rust = [ 'rls' ]

" let g:ale_completion_enabled = 1

" Enable rust autoformatting
let g:ale_fix_on_save = 1

" Add rustfmt auto formatter
let g:ale_fixers = {}
let g:ale_fixers.rust = [ 'rustfmt' ]
let g:ale_fixers.c = [ 'clang-format' ]
let g:ale_fixers.cpp = [ 'clang-format' ]
