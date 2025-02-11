return {
	{
		"catppuccin/nvim",
		lazy = true,
		name = "catppuccin",
		priority = 1000,
		opts = {
			integrations = {
				cmp = false,
				blink_cmp = false,
			},
		},
	},

	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin-frappe",
		},
	},
}
