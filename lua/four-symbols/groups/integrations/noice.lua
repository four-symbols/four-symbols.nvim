local M = {}

function M.get(p)
	return {
		NoiceCmdlinePopup = { bg = p.bg_dark },
		NoiceCmdlinePopupBorder = { fg = p.blue, italic = true },
		NoiceCmdlineIcon = { fg = p.blue },
	}
end

return M
