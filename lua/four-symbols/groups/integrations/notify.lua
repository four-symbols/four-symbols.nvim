local M = {}

function M.get(p)
	return {
		NotifyBackground = { fg = p.fg, bg = p.bg },
		NotifyERRORBorder = { fg = p.orange, bg = p.bg },
		NotifyWARNBorder = { fg = p.yellow, bg = p.bg },
		NotifyINFOBorder = { fg = p.purple, bg = p.bg },
		NotifyDEBUGBorder = { fg = p.caption, bg = p.bg },
		NotifyTRACEBorder = { fg = p.red, bg = p.bg },
		NotifyERRORIcon = { fg = p.orange },
		NotifyWARNIcon = { fg = p.yellow },
		NotifyINFOIcon = { fg = p.purple },
		NotifyDEBUGIcon = { fg = p.fg_secondary },
		NotifyTRACEIcon = { fg = p.red },
		NotifyERRORTitle = { fg = p.orange },
		NotifyWARNTitle = { fg = p.yellow },
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
