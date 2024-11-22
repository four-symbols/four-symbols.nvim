local M = {}

function M.get(p)
	return {
		markdownH1 = { fg = p.blue, bold = true },
		markdownH2 = { fg = p.blue, bold = true },
		markdownH3 = { fg = p.blue, bold = true },
		markdownH4 = { fg = p.blue, bold = true },
		markdownH5 = { fg = p.blue, bold = true },
		markdownH6 = { fg = p.blue, bold = true },
		markdownHeadingDelimiter = { fg = p.fg_04 },
		markdownHeadingRule = { fg = p.fg_04 },
		markdownId = { fg = p.red },
		markdownIdDeclaration = { fg = p.purple },
		markdownIdDelimiter = { fg = p.red },
		markdownLinkDelimiter = { fg = p.fg_04 },
		markdownLinkText = { fg = p.purple, italic = true },
		markdownListMarker = { fg = p.fg_04 },
		markdownOrderedListMarker = { fg = p.fg_04 },
		markdownRule = { fg = p.fg_04 },
		markdownUrl = { fg = p.green, bg = p.none },
		markdownBlockquote = { fg = p.fg_01 },
		markdownBold = { fg = p.fg_01, bg = p.none, bold = true },
		markdownItalic = { fg = p.fg_01, bg = p.none, italic = true },
		markdownCode = { fg = p.bg_01, bg = p.bg_02 },
		markdownCodeBlock = { fg = p.fg_04, bg = p.bg_02 },
		markdownCodeDelimiter = { fg = p.fg_04, bg = p.bg_02 },
	}
end

return M
