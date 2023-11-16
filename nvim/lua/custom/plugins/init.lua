-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{
		'theprimeagen/harpoon',
		config = function()
			local mark = require("harpoon.mark")
			local ui = require("harpoon.ui")

			vim.keymap.set("n", "<leader>a", mark.add_file)
			vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

			vim.keymap.set("n", "<C-u>", function() ui.nav_file(1) end)
			vim.keymap.set("n", "<C-i>", function() ui.nav_file(2) end)
			vim.keymap.set("n", "<C-o>", function() ui.nav_file(3) end)
			vim.keymap.set("n", "<C-p>", function() ui.nav_file(4) end)
		end,
	},

	{
		'xiyaowong/transparent.nvim',
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {}
	},
	{
		'zbirenbaum/copilot.lua',
		cmp = "Copilot",
		opts = {
			suggestion = {
				auto_trigger = true,
				keymap = {
					accept = "<C-l>",
					accept_word = false,
					accept_line = false,
					next = "<C-.>",
					prev = "<C-,>",
					dismiss = "<C/>",
				},
			},
		},
	},
	{
		"aserowy/tmux.nvim",
		config = true,
	},
	{
		"onsails/lspkind-nvim",
	},
	{
		"linux-cultist/venv-selector.nvim",
		dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim", "mfussenegger/nvim-dap-python" },
		opts = {
			-- Your options go here
			-- name = "venv",
			-- auto_refresh = false
		},
		event = "VeryLazy", -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
		keys = { {
			-- Keymap to open VenvSelector to pick a venv.
			"<leader>vs", "<cmd>:VenvSelect<cr>",
			-- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
			"<leader>vc", "<cmd>:VenvSelectCached<cr>"
		} }
	},
	{
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
		ft = { "markdown" },
	}
}
