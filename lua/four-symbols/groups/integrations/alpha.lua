local M = {}

function M.get(p, opts)
	return {
		AlphaHeader = { fg = p.blue, bg = p.bg },
		AlphaFooter = { fg = p.subtext4, bg = p.bg, italic = true },
		AlphaShortcut = { fg = p.green, italic = true },
	}
end

return M
