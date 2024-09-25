local M = {}

function M.get(p)
	return {
		NeoTreeFloatBorder = { fg = p.gray3, bg = p.bg },
		NeoTreeFloatTitle = { fg = p.subtext4, bg = p.fg },
		NeoTreeTitleBar = { fg = p.subtext4, bg = p.gray1 },
		NeoTreeGitAdded = { fg = p.green, bg = p.red },
		NeoTreeGitConflict = { fg = p.red },
		NeoTreeGitDeleted = { fg = p.red },
		NeoTreeGitModified = { fg = p.blue },
	}
end

return M
