local M = {}

function M.get(p, opts)
	return {
		-- General
		DashboardHeader = { fg = p.fg_03 },
		DashboardFooter = { fg = p.purple },

		-- Hyper theme
		DashboardProjectTitle = { fg = p.fg_01 },
		DashboardProjectTitleIcon = { fg = p.fg_01 },
		DashboardProjectIcon = { fg = p.magenta },
		DashboardMruTitle = { fg = p.fg_01 },
		DashboardMruIcon = { fg = p.blue },
		DashboardFiles = { fg = p.blue },
		DashboardShortCutIcon = { fg = p.yellow },

		-- Doome theme
		DashboardDesc = { fg = p.purple },
		DashboardKey = { fg = p.orange },
		DashboardIcon = { fg = p.green },
		DashboardShortCut = { fg = p.purple },
	}
end

return M
