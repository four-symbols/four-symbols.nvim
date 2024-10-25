local M = {}

function M.get(p)
	return {
		NeoTreeFloatBorder = { fg = p.gray, bg = p.bg },
		NeoTreeFloatTitle = { fg = p.fg_secondary, bg = p.fg },
		NeoTreeTitleBar = { fg = p.fg_secondary, bg = p.gray },
		NeoTreeGitAdded = { fg = p.water, bg = p.red },
		NeoTreeGitConflict = { fg = p.red },
		NeoTreeGitDeleted = { fg = p.red },
		NeoTreeGitModified = { fg = p.wood },

		-- 缩进线
		-- NeoTreeDimText = {
		-- 	fg = p.gray,
		-- },
		NeoTreeFileName = {
			fg = p.fg,
		},
		NeoTreeGitStaged = {
			fg = p.earth,
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
