local Plug = vim.fn["plug#"]

vim.call("plug#begin", "~/.config/nvim/plugged")
Plug("nvim-treesitter/nvim-treesitter", { ["do"] = ":TSUpdate" })
Plug("norcalli/nvim-colorizer.lua")
vim.call("plug#end")
