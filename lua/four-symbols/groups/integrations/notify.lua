local M = {}

function M.get(p)
	return {
		NotifyBackground = { fg = p.fg, bg = p.bg },
		NotifyERRORBorder = { fg = p.fire, bg = p.bg },
		NotifyWARNBorder = { fg = p.metal, bg = p.bg },
		NotifyINFOBorder = { fg = p.purple, bg = p.bg },
		NotifyDEBUGBorder = { fg = p.caption, bg = p.bg },
		NotifyTRACEBorder = { fg = p.red, bg = p.bg },
		NotifyERRORIcon = { fg = p.fire },
		NotifyWARNIcon = { fg = p.metal },
		NotifyINFOIcon = { fg = p.purple },
		NotifyDEBUGIcon = { fg = p.fg_secondary },
		NotifyTRACEIcon = { fg = p.red },
		NotifyERRORTitle = { fg = p.fire },
		NotifyWARNTitle = { fg = p.metal },
		NotifyINFOTitle = { fg = p.purple },
		NotifyDEBUGTitle = { fg = p.fg_secondary },
		NotifyTRACETitle = { fg = p.red },
		NotifyERRORBody = { fg = p.fg, bg = p.bg },
		NotifyWARNBody = { fg = p.fg, bg = p.bg },
		NotifyINFOBody = { fg = p.fg, bg = p.bg },
		NotifyDEBUGBody = { fg = p.fg, bg = p.bg },
		NotifyTRACEBody = { fg = p.fg, bg = p.bg },
	}
end

return M
