local M = {}

function M.get(p, opts)
	return {
		AlphaHeader = { fg = p.water, bg = p.bg },
		AlphaFooter = { fg = p.fg_secondary, bg = p.bg, italic = true },
		AlphaShortcut = { fg = p.wood, italic = true },
	}
end

return M
