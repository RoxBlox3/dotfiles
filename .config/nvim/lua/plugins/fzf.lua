return {
	{
		"ibhagwan/fzf-lua",
		event = "VeryLazy",
		-- optional for icon support
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			-- calling `setup` is optional for customization
			require("fzf-lua").setup({
				previewers = {
					builtin = {
						extensions = {
							-- neovim terminal only supports `viu` block output
							["gif"] = { "chafa", "{file}", "--format=symbols" },
							["png"] = { "chafa", "{file}", "--format=symbols" },
							["jpeg"] = { "chafa", "{file}", "--format=symbols" },
							-- by default the filename is added as last argument
							-- if required, use `{file}` for argument positioning
							["svg"] = { "chafa", "{file}", "--format=symbols" },
							["jpg"] = { "chafa", "{file}", "--format=symbols" },
						},
					},
				},
			})
		end,
	},
}
