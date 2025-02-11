return {
	{
		"neovim/nvim-lspconfig",
		dependencies = { "saghen/blink.cmp" },
		event = "VeryLazy",
		opts = {
			diagnostics = {
				virtual_text = {
					spacing = 4,
				},
			},
		},
		config = function(_, opts)
			local lspconfig = require("lspconfig")
			for server, config in pairs(opts.servers) do
			end
		end,
	},
}
