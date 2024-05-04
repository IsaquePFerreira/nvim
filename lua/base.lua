local g = vim.g
g.mapleader = ","

-- File manager
g.netrw_banner = 0
g.netrw_browse_split = 4
g.netrw_altv = 1
g.netrw_liststyle = 3
g.netrw_winsize = 20
g.netrw_keepdir = 0

local cmd = vim.cmd
local o = vim.o
local opt = vim.opt

opt.title = true
cmd("set path+=**")
cmd("syntax on")
cmd("filetype plugin indent on")
opt.termguicolors = true
cmd("colorscheme everforest")
cmd("hi Normal guibg=NONE ctermbg=NONE")
cmd("hi TabLine      guifg=#606060 guibg=NONE gui=none")
cmd("hi TabLineSel   guifg=#606060 gui=bold")
cmd("hi TabLineFill  guifg=#606060 guibg=NONE gui=none")
opt.backup = false
opt.writebackup = false
opt.swapfile = false
opt.undofile = true
cmd("set undodir=~/.config/nvim/undodir")
opt.compatible = false
opt.number = true
o.numberwidth = 2
opt.mouse = "a"
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true
opt.wrap = false
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = -1
opt.expandtab = true
opt.textwidth = 79
opt.fileencoding = "utf-8"
opt.pumheight = 10
opt.showtabline = 2
opt.laststatus = 2
opt.signcolumn = "auto"
opt.autoindent = true
opt.smartindent = true
opt.showcmd = true
opt.showmode = true
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.clipboard = "unnamedplus"
opt.completeopt = { "menuone", "noselect" }
opt.splitbelow = true
opt.splitright = true
cmd("set wildmenu")
opt.cursorline = true
o.list = false
o.listchars = "tab:›-,space:·,trail:_,eol:↲"
opt.confirm = true
opt.foldmethod = "marker"
opt.fillchars = "fold: "
-- Spelling
opt.spell = false
opt.spelllang = "pt_br,en"

-- Colorizer
require("colorizer").setup(nil, { css = true; })
