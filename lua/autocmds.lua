local cmd = vim.cmd

cmd([[
    autocmd TermOpen * setlocal listchars= nonumber norelativenumber nocursorline
    autocmd TermOpen * startinsert
    autocmd BufLeave term://* stopinsert
]])

-- cmd([[
--     autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})
-- ]])
