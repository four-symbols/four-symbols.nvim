local terminal = require "four-symbols.terminal"

local M = {}

function M.setup(opts)
	local colors = require("four-symbols.palette").setup(opts)

	local groups = require("four-symbols.groups").setup(colors, opts)

	for group, hl in pairs(groups) do
		vim.api.nvim_set_hl(0, group, hl)
	end

	if opts.terminal_colors then terminal.setup(colors) end

	return colors, groups, opts
end

return M
