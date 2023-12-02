local Plug = vim.fn["plug#"]

vim.call("plug#begin", "~/.config/nvim/plugged")
Plug("nvim-treesitter/nvim-treesitter", { ["do"] = ":TSUpdate" })
Plug("norcalli/nvim-colorizer.lua")
-- Plug("gosukiwi/vim-zensnippets")
Plug("neovim/nvim-lspconfig")
Plug("L3MON4D3/LuaSnip", { ["tag"] = "v2.*", ["do"] = ":make install_jsregexp" })
Plug("hrsh7th/cmp-nvim-lsp")
Plug("hrsh7th/cmp-buffer")
Plug("hrsh7th/cmp-path")
Plug("hrsh7th/nvim-cmp")
Plug("saadparwaiz1/cmp_luasnip")
Plug "rafamadriz/friendly-snippets"
vim.call("plug#end")
