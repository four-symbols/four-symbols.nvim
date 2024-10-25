local M = {}

function M.get(p)
	return {
		NoiceCmdlinePopup = { bg = p.bg_secondary },
		NoiceCmdlinePopupBorder = { fg = p.water, italic = true },
		NoiceCmdlineIcon = { fg = p.water },
	}
end

return M
