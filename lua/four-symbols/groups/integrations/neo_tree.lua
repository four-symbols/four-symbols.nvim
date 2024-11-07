local M = {}

function M.get(p)
	return {
		NeoTreeFloatBorder = { fg = p.gray, bg = p.bg },
		NeoTreeFloatTitle = { fg = p.fg_secondary, bg = p.bg },
		NeoTreeTitleBar = { fg = p.fg, bg = p.bg_muted },
		NeoTreeGitAdded = { fg = p.blue, bg = p.red },
		NeoTreeGitConflict = { fg = p.red },
		NeoTreeGitDeleted = { fg = p.red },
		NeoTreeGitModified = { fg = p.green },

		NeoTreeDimText = {
			fg = p.bg_secondary,
		},
		NeoTreeFileName = {
			fg = p.fg,
		},
		NeoTreeGitStaged = {
			fg = p.brown,
		},
		NeoTreeGitUntracked = {
			fg = p.purple,
		},
		NeoTreeNormal = {
			bg = p.bg,
			fg = p.fg,
		},
		NeoTreeNormalNC = {
			bg = p.bg,
			fg = p.fg,
		},
	}
end

return M
