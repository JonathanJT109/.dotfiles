return {
	plugins = {
		"AstroNvim/astrocommunity",
		{ import = "astrocommunity.colorscheme.catppuccin" },
		{ import = "astrocommunity.utility.transparent-nvim" },
		{ import = "astrocommunity.pack.cpp" },
		{ import = "astrocommunity.pack.python" },
		{ import = "astrocommunity.pack.rust" },
		{ import = "astrocommunity.pack.lua" },
		{ import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
		{ import = "astrocommunity.editing-support.todo-comments-nvim" },
	},
	lsp = {
		config = {
			rust_analyzer = {
				settings = {
					["rust-analyzer"] = {
						cargo = {
							extraEnv = { CARGO_PROFILE_RUST_ANALYZER_INHERITS = "dev" },
							extraArgs = { "--profile", "rust-analyzer" },
						},
					},
				},
			},
		},
	},
}
