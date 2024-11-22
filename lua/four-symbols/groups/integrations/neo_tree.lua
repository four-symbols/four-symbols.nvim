local M = {}

function M.get(p)
	return {
		NeoTreeFloatBorder = { fg = p.gray, bg = p.bg_01 },
		NeoTreeFloatTitle = { fg = p.fg_04, bg = p.bg_01 },
		NeoTreeTitleBar = { fg = p.fg_01, bg = p.bg_02 },
		NeoTreeGitAdded = { fg = p.blue, bg = p.red },
		NeoTreeGitConflict = { fg = p.red },
		NeoTreeGitDeleted = { fg = p.red },
		NeoTreeGitModified = { fg = p.green },

		NeoTreeDimText = {
			fg = p.bg_04,
		},
		NeoTreeFileName = {
			fg = p.fg_01,
		},
		NeoTreeGitStaged = {
			fg = p.brown,
		},
		NeoTreeGitUntracked = {
			fg = p.purple,
		},
		NeoTreeNormal = {
			bg = p.bg_01,
			fg = p.fg_01,
		},
		NeoTreeNormalNC = {
			bg = p.bg_01,
			fg = p.fg_01,
		},
	}
end

return M
