local M = {}

function M.get(p, opts)
	return {
		AlphaHeader = { fg = p.blue, bg = p.bg_01 },
		AlphaFooter = { fg = p.fg_04, bg = p.bg_01, italic = true },
		AlphaShortcut = { fg = p.green, italic = true },
	}
end

return M
