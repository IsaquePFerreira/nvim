local function map(m, k, v)
	vim.keymap.set(m, k, v, { silent = true })
end

--Terminal
map("t", "<esc>", "<c-\\><c-n>")
map("n", "<f4>", ":sp<cr>:term<cr>")

-- File search
map("n", "<c-p>", ":FZF<cr>")

-- File explorer
map("n", "<f3>", ":Lex<cr>")

-- Navigation
map("n", "j", "gj")
map("n", "k", "gk")

-- Buffers
map("n", "]b", ":bn<cr>")
map("n", "[b", ":bp<cr>")
map("n", "<leader>c", ":bd<cr>")

-- Tabs
map("n", "<c-t>", ":tabnew <cr>")
map("n", "]t", "gt")
map("n", "[t", "gT")

-- Spell checker
map("n", "<f2>", ":set spell!<cr>")

-- Toggle wrap
map("n", "<leader>tw", ":set wrap!<cr>")

-- Toggle list chars
map("n", "<leader>tl", ":set list!<cr>")

-- Toggle hlsearch
map("n", "<leader>th", ":set hls!<cr>")
map("n", "<leader>tc", ":noh<cr>")

-- Replace all instances of highlighted words
map("v", "<leader>r", '"hy:%s/<c-r>h//g<left><left>')

-- Move current line down
map("v", "J", ":m '>+1<cr>gv=gv")
-- Move current line up
map("v", "K", ":m '>-2<cr>gv=gv")

