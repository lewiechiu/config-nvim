vim.cmd 'colorscheme github_dark'

-- Show vertical lines for commit messages

vim.cmd 'autocmd bufreadpre COMMIT_EDITMSG setlocal textwidth=72'
vim.cmd 'autocmd bufreadpre COMMIT_EDITMSG setlocal colorcolumn=72'

vim.g.mapleader = ' '

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Set tab width to 4
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Set line number
vim.opt.number = true

vim.opt.spelllang = 'en_us'
vim.opt.spell = true

