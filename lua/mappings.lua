-- Leader
vim.g.mapleader = ","

-- Remaps ; to : in normal mode
vim.keymap.set("n", ";", ":", { noremap = true })

-- Clear highlight search
vim.keymap.set("n", "<leader><space>", ':let @/=""<cr>')

-- File explorer
vim.keymap.set("n", "<leader>e", ":Lex<cr>")

-- FZF
vim.keymap.set("n", "<c-p>", ":FZF<cr>")

-- Terminal
vim.keymap.set("t", "<esc>", "<c-\\><c-n>")
vim.keymap.set("n", "<f4>", ":sp<cr>:term<cr>")

-- Navigation
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")

-- Buffers
vim.keymap.set("n", "]b", ":bn<cr>")
vim.keymap.set("n", "[b", ":bp<cr>")
vim.keymap.set("n", "<leader>c", ":bd<cr>")
vim.keymap.set("n", "<c-t>", ":tabnew <cr>")
vim.keymap.set("n", "]t", "gt")
vim.keymap.set("n", "[t", "gT")

-- Toggle functions
-- Spell checking
vim.keymap.set("n", "<f2>", ":set spell!<cr>")
-- Wrap
vim.keymap.set("n", "<leader>tw", ":set wrap!<cr>")
-- List
vim.keymap.set("n", "<leader>tl", ":set list!<cr>")

-- Copy selection to Xorg
vim.cmd([[
vmap <silent> <leader>yy "+y
vmap <silent> <leader>dd "+c
]])
