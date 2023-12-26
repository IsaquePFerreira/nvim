local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

map("n", "<c-p>", ":FZF<cr>")

map("t", "<esc>", "<c-\\><c-n>")
map("n", "<f4>", ":sp<cr>:term<cr>")


map("n", "j", "gj")
map("n", "k", "gk")

map("n", "]b", ":bn<cr>")
map("n", "[b", ":bp<cr>")

map("n", "<c-t>", ":tabnew <cr>")
map("n", "]t", "gt")
map("n", "[t", "gT")

map("n", "<f2>", ":set spell!<cr>")

map("n", "<leader>tw", ":set wrap!<cr>")

map("n", "<leader>tl", ":set list!<cr>")

local cmd = vim.cmd
cmd([[
    vmap <silent> <leader>yy "+y
    vmap <silent> <leader>dd "+c
]])

