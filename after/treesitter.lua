require("nvim-treesitter.configs").setup({
	ensure_installed = { "html", "css", "vim", "go", "python", "lua", "typescript", "tsx" },
	highlight = {
		enable = true,
	},
})
