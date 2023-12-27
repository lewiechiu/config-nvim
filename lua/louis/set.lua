vim.cmd 'colorscheme github_dark_default'

-- Show vertical lines for commit messages

vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "COMMIT_EDITMSG" },
	callback = function()
    vim.api.nvim_set_option_value("colorcolumn", "72", {})
	end,
})


vim.g.mapleader = ' '

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Set tab width to 4
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Set line number
vim.opt.number = true

vim.opt.spelllang = 'en_us'
vim.opt.spell = true

-- Set wrap and spell in markdown and gitcommit
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "go" },
	callback = function()
		vim.opt.tabstop = 8
		vim.opt.shiftwidth = 8
		vim.opt.expandtab = true
	end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "python" },
	callback = function()
		vim.opt.tabstop = 2
		vim.opt.shiftwidth = 2
		vim.opt.expandtab = true
    vim.api.nvim_set_option_value("colorcolumn", "80", {})
	end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "bash" },
	callback = function()
		vim.opt.tabstop = 2
		vim.opt.shiftwidth = 2
		vim.opt.expandtab = true
    vim.api.nvim_set_option_value("colorcolumn", "80", {})
	end,
})
