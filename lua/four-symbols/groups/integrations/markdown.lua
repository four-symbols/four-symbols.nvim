local M = {}

function M.get(p)
	return {
		markdownH1 = { fg = p.blue, bold = true },
		markdownH2 = { fg = p.blue, bold = true },
		markdownH3 = { fg = p.blue, bold = true },
		markdownH4 = { fg = p.blue, bold = true },
		markdownH5 = { fg = p.blue, bold = true },
		markdownH6 = { fg = p.blue, bold = true },
		markdownHeadingDelimiter = { fg = p.fg_secondary },
		markdownHeadingRule = { fg = p.fg_secondary },
		markdownId = { fg = p.red },
		markdownIdDeclaration = { fg = p.purple },
		markdownIdDelimiter = { fg = p.red },
		markdownLinkDelimiter = { fg = p.fg_secondary },
		markdownLinkText = { fg = p.purple, italic = true },
		markdownListMarker = { fg = p.fg_secondary },
		markdownOrderedListMarker = { fg = p.fg_secondary },
		markdownRule = { fg = p.fg_secondary },
		markdownUrl = { fg = p.green, bg = p.none },
		markdownBlockquote = { fg = p.fg },
		markdownBold = { fg = p.fg, bg = p.none, bold = true },
		markdownItalic = { fg = p.fg, bg = p.none, italic = true },
		markdownCode = { fg = p.bg, bg = p.bg_muted },
		markdownCodeBlock = { fg = p.fg_secondary, bg = p.bg_muted },
		markdownCodeDelimiter = { fg = p.fg_secondary, bg = p.bg_muted },
	}
end

return M
