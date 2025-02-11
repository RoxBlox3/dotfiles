return {
	{
		"saghen/blink.cmp",
		-- optional: provides snippets for the snippet source
		dependencies = "rafamadriz/friendly-snippets",
		event = "VeryLazy",
		opts = {
			sources = {

				default = { "dadbod" },
				providers = {
					dadbod = { name = "Dadbod", module = "vim_dadbod_completion.blink" },
				},
			},
			-- 'default' for mappings similar to built-in completion
			-- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
			-- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
			-- See the full "keymap" documentation for information on defining your own keymap.
			keymap = { preset = "super-tab" },

			appearance = {

				-- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
				-- Adjusts spacing to ensure icons are aligned
				nerd_font_variant = "normal",
			},
			completion = {
				menu = {
					border = "single",
					draw = {
						components = {
							label = {
								text = function(ctx)
									return ctx.label
								end,
								highlight = "CmpItemKind",
								ellipsis = true,
							},

							kind_icon = {
								ellipsis = false,
								text = function(ctx)
									local kind_icon, _, _ = require("mini.icons").get("lsp", ctx.kind)
									return kind_icon
								end,
								-- Optionally, you may also use the highlights from mini.icons
								highlight = function(ctx)
									local _, hl, _ = require("mini.icons").get("lsp", ctx.kind)
									return hl
								end,
							},
						},
						--[[
						columns = {
							{ "label", "label _description", gap = 1 },
							{ "kind_icon", "kind" },
						},
						--]]
						treesitter = {
							"lsp",
						},
					},
				},
				documentation = {
					window = {
						border = "single",
					},
				},
			},
			signature = {
				window = {
					border = "single",
				},
			},
		},
		opts_extend = { "sources.default" },
	},
}
