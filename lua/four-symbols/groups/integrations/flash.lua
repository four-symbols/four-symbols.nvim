local M = {}

function M.get(p)
	return {
		FlashLabel = { fg = p.green, bg = p.bg_01, bold = true },
		FlashBackdrop = { fg = p.fg_04 },
		FlashMatch = { fg = p.purple, bg = p.bg_01 },
		FlashCurrent = { fg = p.cyan, bg = p.bg_01 },
		FlashPrompt = { bg = p.bg_04 },
	}
end

return M
