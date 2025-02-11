-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

vim.api.nvim_create_autocmd("BufReadPost", {
	pattern = "*",
	callback = function()
		local realpath = vim.loop.fs_realpath(vim.fn.expand("%:p"))
		if realpath and realpath ~= vim.fn.expand("%:p") then
			vim.cmd("e " .. realpath)
		end
	end,
})
