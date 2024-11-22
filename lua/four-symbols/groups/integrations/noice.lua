local M = {}

function M.get(p)
	return {
		NoiceCmdlinePopup = { bg = p.bg_02 },
		NoiceCmdlinePopupBorder = { fg = p.fg_03, italic = true },
		NoiceCmdlineIcon = { fg = p.fg_03 },
	}
end

return M
