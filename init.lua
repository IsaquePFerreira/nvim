vim.loader.enable() --  SPEEEEEEEEEEED 

-- Plugins
vim.pack.add({
	{ src = 'https://github.com/uZer/pywal16.nvim'},
	{ src = 'https://github.com/nvim-lualine/lualine.nvim'},
	{ src = 'https://github.com/nvim-tree/nvim-web-devicons'},
	{ src = 'https://github.com/folke/which-key.nvim'},
	{ src = 'https://github.com/romgrk/barbar.nvim'},
	{ src = 'https://github.com/goolord/alpha-nvim'},
	{ src = 'https://github.com/nvim-treesitter/nvim-treesitter'},
	{ src = 'https://github.com/mfussenegger/nvim-lint'},
	{ src = 'https://github.com/nvim-tree/nvim-tree.lua'},
	{ src = 'https://github.com/windwp/nvim-autopairs'},
	{ src = 'https://github.com/lewis6991/gitsigns.nvim'},
	{ src = 'https://github.com/numToStr/Comment.nvim'},
	{ src = 'https://github.com/ibhagwan/fzf-lua'},
	{ src = 'https://github.com/MeanderingProgrammer/render-markdown.nvim'},
	{ src = 'https://github.com/emmanueltouzery/decisive.nvim'},
})

-- move config and plugin config to alternate files
require("config.theme")
require("config.mappings")
require("config.options")
require("config.autocmd")

require("plugins.alpha")
require("plugins.barbar")
-- require("plugins.colorscheme")
require("plugins.comment")
require("plugins.gitsigns")
require("plugins.lualine")
require("plugins.nvim-lint")
require("plugins.render-markdown")
require("plugins.autopairs")
require("plugins.fzf-lua")
require("plugins.nvim-tree")
require("plugins.treesitter")
require("plugins.which-key")

load_theme()
