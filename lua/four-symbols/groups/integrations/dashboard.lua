local M = {}

function M.get(p, opts)
	return {
		-- General
		DashboardHeader = { fg = p.fg_hint },
		DashboardFooter = { fg = p.purple },

		-- Hyper theme
		DashboardProjectTitle = { fg = p.fg },
		DashboardProjectTitleIcon = { fg = p.fg },
		DashboardProjectIcon = { fg = p.magenta },
		DashboardMruTitle = { fg = p.fg },
		DashboardMruIcon = { fg = p.water },
		DashboardFiles = { fg = p.water },
		DashboardShortCutIcon = { fg = p.metal },

		-- Doome theme
		DashboardDesc = { fg = p.purple },
		DashboardKey = { fg = p.fire },
		DashboardIcon = { fg = p.wood },
		DashboardShortCut = { fg = p.purple },
	}
end

return M
