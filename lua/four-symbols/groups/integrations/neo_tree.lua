local M = {}

function M.get(p)
	return {
		NeoTreeFloatBorder = { fg = p.gray3, bg = p.bg },
		NeoTreeFloatTitle = { fg = p.subtext4, bg = p.fg },
		NeoTreeTitleBar = { fg = p.subtext4, bg = p.gray1 },
	}
end

return M
