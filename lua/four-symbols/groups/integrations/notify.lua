local M = {}

function M.get(p)
	return {
		NotifyBackground = { fg = p.fg, bg = p.bg },
		NotifyERRORBorder = { fg = p.orange, bg = p.bg },
		NotifyWARNBorder = { fg = p.yellow, bg = p.bg },
		NotifyINFOBorder = { fg = p.purple, bg = p.bg },
		NotifyDEBUGBorder = { fg = p.subtext1, bg = p.bg },
		NotifyTRACEBorder = { fg = p.red, bg = p.bg },
		NotifyERRORIcon = { fg = p.bright_orange },
		NotifyWARNIcon = { fg = p.bright_yellow },
		NotifyINFOIcon = { fg = p.bright_purple },
		NotifyDEBUGIcon = { fg = p.subtext4 },
		NotifyTRACEIcon = { fg = p.bright_red },
		NotifyERRORTitle = { fg = p.bright_orange },
		NotifyWARNTitle = { fg = p.bright_yellow },
		NotifyINFOTitle = { fg = p.bright_purple },
		NotifyDEBUGTitle = { fg = p.subtext4 },
		NotifyTRACETitle = { fg = p.bright_red },
		NotifyERRORBody = { fg = p.fg, bg = p.bg },
		NotifyWARNBody = { fg = p.fg, bg = p.bg },
		NotifyINFOBody = { fg = p.fg, bg = p.bg },
		NotifyDEBUGBody = { fg = p.fg, bg = p.bg },
		NotifyTRACEBody = { fg = p.fg, bg = p.bg },
	}
end

return M
