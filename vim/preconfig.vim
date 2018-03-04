if "" != $SSH_CLIENT
    let g:is_ssh = 1
    set guicursor=
else
    let g:is_ssh = 0
endif

let g:python3_host_prog = "/usr/local/Cellar/python/3.6.4_3/bin/python3"
