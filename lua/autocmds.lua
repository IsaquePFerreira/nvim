local cmd = vim.cmd

cmd([[
    autocmd TermOpen * setlocal listchars= nonumber norelativenumber nocursorline
    autocmd TermOpen * startinsert
    autocmd BufLeave term://* stopinsert
]])

cmd([[
    autocmd VimLeave,Vimsuspend * set guicursor=a:ver90:block-blinckon0
]])

-- cmd([[
--     autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})
-- ]])
