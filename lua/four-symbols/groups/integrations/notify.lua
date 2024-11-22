local M = {}

function M.get(p)
	return {
		NotifyBackground = { fg = p.fg_01, bg = p.bg_01 },
		NotifyERRORBorder = { fg = p.orange, bg = p.bg_01 },
		NotifyWARNBorder = { fg = p.yellow, bg = p.bg_01 },
		NotifyINFOBorder = { fg = p.purple, bg = p.bg_01 },
		NotifyDEBUGBorder = { fg = p.caption, bg = p.bg_01 },
		NotifyTRACEBorder = { fg = p.red, bg = p.bg_01 },
		NotifyERRORIcon = { fg = p.orange },
		NotifyWARNIcon = { fg = p.yellow },
		NotifyINFOIcon = { fg = p.purple },
		NotifyDEBUGIcon = { fg = p.fg_04 },
		NotifyTRACEIcon = { fg = p.red },
		NotifyERRORTitle = { fg = p.orange },
		NotifyWARNTitle = { fg = p.yellow },
		NotifyINFOTitle = { fg = p.purple },
		NotifyDEBUGTitle = { fg = p.fg_04 },
		NotifyTRACETitle = { fg = p.red },
		NotifyERRORBody = { fg = p.fg_01, bg = p.bg_01 },
		NotifyWARNBody = { fg = p.fg_01, bg = p.bg_01 },
		NotifyINFOBody = { fg = p.fg_01, bg = p.bg_01 },
		NotifyDEBUGBody = { fg = p.fg_01, bg = p.bg_01 },
		NotifyTRACEBody = { fg = p.fg_01, bg = p.bg_01 },
	}
end

return M
