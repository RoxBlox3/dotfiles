return {
	{
		"neovim/nvim-lspconfig",
		dependencies = { "saghen/blink.cmp" },
		event = "VeryLazy",
		opts = {
			--[[
			servers = {
				sqlfluff = {
					settings = {
						sqlfluff = {
							dialect = "mysql",
							indent_unit = "space",
							format = {
								comma_style = "trailing", -- Customize as needed
								aliasing = "explicit",
								indent_columns = true,
								quote_style = "double",
								strip_whitespace = true,
								reserved_keyword_case = "upper",
								function_name_case = "lower",
							},
							roules = {
								indentation = "ignore",
							},
						},
					},
				},
			},
			]]
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
