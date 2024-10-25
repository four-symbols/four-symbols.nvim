local M = {}

function M.get(p, opts)
	return {
		CmpItemAbbrDeprecated = { fg = p.fg_hint, strikethrough = true },
		CmpItemAbbrMatch = { fg = p.water, bold = true },
		CmpItemAbbrMatchFuzzy = { fg = p.water, bold = true },
		CmpItemKindText = { fg = p.fg_hint, italic = true },
		CmpItemKindFunction = { fg = p.red, italic = true },
		CmpItemKindVariable = { fg = p.purple, italic = true },
		CmpItemKindEnum = { fg = p.wood, italic = true },
		CmpItemKindSnippet = { fg = p.metal, italic = true },
		CmpItemKindField = { fg = p.magenta, italic = true },
		CmpItemKindConstant = { fg = p.fire, italic = true },
		CmpItemKindMethod = { fg = p.cyan, italic = true },
		CmpBorder = { fg = p.red },
		CmpItemMenu = { fg = p.purple, italic = true },
	}
end

return M
