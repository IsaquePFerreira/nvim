vim.cmd([[
    let g:netrw_banner=0
    let g:netrw_winsize=20

    " Create file without opening buffer
    function! CreateInPreview()
    let l:filename = input('please enter filename: ')
    execute 'silent !touch ' . b:netrw_curdir.'/'.l:filename
    redraw!
    endfunction

    " Netrw: create file using touch instead of opening a buffer
    function! Netrw_mappings()
    noremap <buffer>% :call CreateInPreview()<cr>
    endfunction

    augroup auto_commands
    autocmd filetype netrw call Netrw_mappings()
    augroup END
]])
