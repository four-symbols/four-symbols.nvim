local M = {}

function M.get(p)
	return {
		TelescopeBorder = { fg = p.bg_05, bg = p.bg_01 },
		TelescopeNormal = { fg = p.fg_01, bg = p.bg_01 },
		TelescopePreviewTitle = { fg = p.fg_03, bg = p.bg_01 },
		TelescopeResultsTitle = { fg = p.bg_01, bg = p.bg_01 },
		TelescopePromptTitle = { fg = p.fg_01, bg = p.bg_01, italic = true },
		TelescopePromptBorder = { fg = p.bg_04, bg = p.bg_01 },
		TelescopePromptNormal = { fg = p.fg_01, bg = p.bg_01 },
		TelescopePromptCounter = { fg = p.fg_03, bg = p.bg_01 },
		TelescopeMatching = { fg = p.magenta, bold = true },
	}
end

return M
