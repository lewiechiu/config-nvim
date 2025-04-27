return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	use({ "projekt0n/github-nvim-theme" })
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
			require("nvim-treesitter.config").update()
		end,
	})

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		requires = {
			--- Uncomment these if you want to manage LSP servers from neovim
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "L3MON4D3/LuaSnip" },
		},
	})
	use("sindrets/diffview.nvim")

	-- Formatter support
	use({
		"stevearc/conform.nvim",
		config = function()
			require("conform").setup()
		end,
	})

	use({
		"folke/zen-mode.nvim",
		opts = {
			window = {
				width = 0.6,
				options = {

					number = true, -- disable number column
					relativenumber = true, -- disable relative numbers
					cursorline = true, -- disable cursorline
					cursorcolumn = true, -- disable cursor column
					foldcolumn = "0", -- disable fold column
					list = true, -- disable whitespace characters
				},
			},
		},
	})

	require("louis/set")
end)
