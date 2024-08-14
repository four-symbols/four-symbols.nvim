local M = {}

function M.setup(opts)
	opts = require("four-symbols.config").extend(opts)

	local colors = require("four-symbols.palette").setup(opts)

	local groups = require("four-symbols.groups").setup(colors, opts)

	for group, hl in pairs(groups) do
		-- vim.notify(vim.inspect(group, hl), vim.log.levels.INFO)
		vim.api.nvim_set_hl(0, group, hl)
	end

	return colors, groups, opts
end

return M
