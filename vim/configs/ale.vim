" Enable real time rust linting
let g:ale_linters = {}
let g:ale_linters.rust = [ 'rls' ]

" Enable rust autoformatting
let g:ale_fix_on_save = 1

" Add rustfmt auto formatter
let g:ale_fixers = {}
let g:ale_fixers.rust = [ 'rustfmt' ]