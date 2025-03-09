return {
	{
		"neovim/nvim-lspconfig",
		dependencies = { "saghen/blink.cmp" },
		event = "VeryLazy",
		opts = {
			servers = {
				sqlfluff = {
					settings = {
						sqlfluff = {
							dialect = "mysql", -- SQL dialect
							indent_unit = "space", -- Use spaces for indentation
							rules = {
								L019 = { comma_style = "trailing" }, -- Trailing comma rule
							},
						},
					},
				},
			},
		},
		--[[
		config = function(_, opts)
<<<<<<< Updated upstream
			local lspconfig = require("lspconfig")

			-- Ensure lspconfig is properly initialized
			if lspconfig.sqlfluff then
				lspconfig.sqlfluff.setup(opts.servers.sqlfluff)
			else
				vim.notify("sqlfluff LSP is not available", vim.log.levels.ERROR)
=======
			local lspconfig = require("lspconfig"),
			for server, config in pairs(opts.servers) do
>>>>>>> Stashed changes
			end
		end,
		]]
	},
}
