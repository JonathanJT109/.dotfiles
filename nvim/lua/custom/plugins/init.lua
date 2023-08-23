-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{
		'ThePrimeagen/harpoon',
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
}
