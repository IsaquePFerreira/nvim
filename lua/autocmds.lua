vim.cmd [[
    au VimLeave,VimSuspend * set guicursor=a:ver90:block-blinkon0

    autocmd TermOpen * setlocal listchars= nonumber norelativenumber nocursorline
    autocmd TermOpen * startinsert
    autocmd BufLeave term://* stopinsert
]]

