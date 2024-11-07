local M = {}

function M.get(p)
	return {
		TelescopeBorder = { fg = p.bg_bright, bg = p.bg },
		TelescopeNormal = { fg = p.fg, bg = p.bg },
		TelescopePreviewTitle = { fg = p.fg_caption, bg = p.bg },
		TelescopeResultsTitle = { fg = p.bg, bg = p.bg },
		TelescopePromptTitle = { fg = p.fg, bg = p.bg, italic = true },
		TelescopePromptBorder = { fg = p.bg_secondary, bg = p.bg },
		TelescopePromptNormal = { fg = p.fg, bg = p.bg },
		TelescopePromptCounter = { fg = p.fg_caption, bg = p.bg },
		TelescopeMatching = { fg = p.magenta, bold = true },
	}
end

return M
