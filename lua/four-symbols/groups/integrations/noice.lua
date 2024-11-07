local M = {}

function M.get(p)
	return {
		NoiceCmdlinePopup = { bg = p.bg_muted },
		NoiceCmdlinePopupBorder = { fg = p.fg_caption, italic = true },
		NoiceCmdlineIcon = { fg = p.fg_caption },
	}
end

return M
