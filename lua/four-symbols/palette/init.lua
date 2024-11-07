local util = require "four-symbols.util"
local M = {}

function M.get_palette(theme)
	local palette = vim.deepcopy(require("four-symbols.palette." .. theme))

	return palette
end

function M.setup(opts)
	opts = require("four-symbols.config").extend(opts)

	local palette = M.get_palette(opts.theme)

	local colors = palette

	return colors, opts
end

return M
