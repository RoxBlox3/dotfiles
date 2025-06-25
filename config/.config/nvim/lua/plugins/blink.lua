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
			keymap = { preset = "default" },

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
								text = function(ctx)
									local icon = ctx.kind_icon

									-- If LSP source, check for color derived from documentation
									if ctx.item.source_name == "LSP" then
										local color_item = require("nvim-highlight-colors").format(
											ctx.item.documentation,
											{ kind = ctx.kind }
										)
										if color_item and color_item.abbr then
											icon = color_item.abbr
										end
									end

									-- Get icon from mini.icons
									local mini_icon, _, _ = require("mini.icons").get("lsp", ctx.kind)
									return (mini_icon or icon) .. ctx.icon_gap
								end,
								highlight = function(ctx)
									local highlight = "BlinkCmpKind" .. ctx.kind

									-- If LSP source, check for color derived from documentation
									if ctx.item.source_name == "LSP" then
										local color_item = require("nvim-highlight-colors").format(
											ctx.item.documentation,
											{ kind = ctx.kind }
										)
										if color_item and color_item.abbr_hl_group then
											highlight = color_item.abbr_hl_group
										end
									end

									-- Use highlight from mini.icons if available
									local _, mini_hl, _ = require("mini.icons").get("lsp", ctx.kind)
									return mini_hl or highlight
								end,
								ellipsis = false,
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
