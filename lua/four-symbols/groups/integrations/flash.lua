local M = {}

function M.get(p)
	return {
		FlashLabel = { fg = p.green, bg = p.bg, bold = true },
		FlashBackdrop = { fg = p.fg_secondary },
		FlashMatch = { fg = p.purple, bg = p.bg },
		FlashCurrent = { fg = p.cyan, bg = p.bg },
		FlashPrompt = { bg = p.bg_secondary },
	}
end

return M
