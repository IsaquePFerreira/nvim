-- Base
local g = vim.g
g.mapleader = ","

local o = vim.o
local opt = vim.opt
local cmd = vim.cmd

o.termguicolors = true

o.scrolloff = 8

o.number = true
o.numberwidth = 2
o.cursorline = true

o.expandtab = true
o.autoindent = true
o.wrap = false
o.textwidth = 79
o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = -1
o.list = false
o.listchars = "tab:›-,space:·,trail:_,eol:↲"

o.ignorecase = true
o.smartcase = true

o.backup = false
o.writebackup = false
o.undofile = true
cmd([[ set undodir=~/.config/nvim/undodir ]])
o.swapfile = false

o.splitbelow = true
o.splitright = true

opt.mouse = "a"

cmd([[
    colorscheme minimalist
    highlight clear StatusLine
]])

cmd([[
    syntax on
    filetype plugin indent on
]])

opt.confirm = true

o.foldmethod = "marker"
o.fillchars = "fold: "

---- Spelling
opt.spell = false
opt.spelllang = "pt_br,en"

require("colorizer").setup()

-- vim.diagnostic.config({
-- 	float = { source = "always", border = border },
-- 	virtual_text = false,
-- 	signs = true,
-- })

-- File manager
cmd [[
    let g:netrw_banner=0
    let g:netrw_winsize=20
    let g:netrw_keepdir=0
]]
