-- Colors
vim.opt.termguicolors = true
vim.cmd([[
    colorscheme onedark
    filetype plugin indent on
    syntax on
    highlight clear StatusLine
]])
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.scrolloff = 2
-- Paths
vim.o.path = vim.o.path .. "**"
vim.opt.swapfile = false
vim.opt.undofile = true
vim.cmd([[ set undodir=~/.config/nvim/undodir ]])
vim.opt.mouse = "a"
vim.cmd([[ set guicursor= ]])
-- Tabulation
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- General
vim.opt.smartindent = true
vim.opt.confirm = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.wrap = false
vim.opt.foldmethod = "marker"
-- Fill characters
vim.opt.list = false
vim.opt.listchars:append("tab:›-,space:·,trail:_,eol:↲")
vim.opt.fillchars:append("fold: ")
-- Spelling
vim.opt.spell = false
vim.opt.spelllang = "pt_br,en"
-- Insert mode menu
vim.opt.complete:append("kspell")
vim.opt.completeopt = "menuone,longest"
vim.opt.shortmess:append("c")
-- Extern files
require("plug-manager")
require("syntaxhl")
require("autocmds")
require("mappings")
require("file-manager")
require("utils")
require("lsp")
require("snippets")
require("complete")

vim.diagnostic.config({
	float = { source = "always", border = border },
	virtual_text = false,
	signs = true,
})
