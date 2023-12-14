require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"bash",
		"c",
        "css",
		"javascript",
		"lua",
		"markdown",
		"vim",
		"vimdoc",
		"query",
	},
	highlight = {
		enable = true,
	},
})
