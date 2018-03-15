if "" != $SSH_CLIENT
    let g:is_ssh = 1
    set guicursor=
else
    let g:is_ssh = 0
endif
