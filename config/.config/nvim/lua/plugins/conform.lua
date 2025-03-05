return {
	"stevearc/conform.nvim",
	opts = {
		formatters = {
			prettier = {
				prepend_args = {
					"--tab-width",
					"4",
				},
			},
		},
		formatters_by_ft = {
			javascript = { "prettier" },
			typescript = { "prettier" },
			javascriptreact = { "prettier" },
			typescriptreact = { "prettier" },
			json = { "prettier" },
			yaml = { "prettier" },
			html = { "prettier" },
			css = { "prettier" },
			scss = { "prettier" },
			markdown = { "prettier" },
			lua = { "stylua" }, -- Example for Lua
		},
	},
}
