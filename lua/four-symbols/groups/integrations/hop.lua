local M = {}

function M.get(p)
	return {
		HopNextKey = { fg = p.yellow },
		HopNextKey1 = { fg = p.purple },
		HopNextKey2 = { fg = p.red },
		HopUnmatched = { fg = p.gray },
		HopCursor = { fg = p.red },
		HopPreview = { fg = p.purple },
	}
end

return M
