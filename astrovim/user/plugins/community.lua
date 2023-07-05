return {
	"AstroNvim/astrocommunity",
	{ import = "astrocommunity.colorscheme.catppuccin" },
	{ import = "astrocommunity.utility.transparent-nvim" },
	{ import = "astrocommunity.pack.cpp" },
	{ import = "astrocommunity.pack.python" },
	{ import = "astrocommunity.pack.rust" },
	{ import = "astrocommunity.pack.lua" },
	{ import = "astrocommunity.pack.svelte" },
	{ import = "astrocommunity.pack.typescript" },
	{ import = "astrocommunity.pack.markdown" },
	{ import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
	{ import = "astrocommunity.editing-support.todo-comments-nvim" },
	{ import = "astrocommunity.completion.copilot-lua" },
	{ -- further customize the options set by the community
		"copilot.lua",
		opts = {
			suggestion = {
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
}
