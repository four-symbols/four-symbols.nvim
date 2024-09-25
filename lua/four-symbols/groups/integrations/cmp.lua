local M = {}

function M.get(p, opts)
	return {
		CmpItemAbbrDeprecated = { fg = p.subtext1, strikethrough = true },
		CmpItemAbbrMatch = { fg = p.blue, bold = true },
		CmpItemAbbrMatchFuzzy = { fg = p.blue, bold = true },
		CmpItemKindText = { fg = p.subtext1, italic = true },
		CmpItemKindFunction = { fg = p.red, italic = true },
		CmpItemKindVariable = { fg = p.purple, italic = true },
		CmpItemKindEnum = { fg = p.green, italic = true },
		CmpItemKindSnippet = { fg = p.yellow, italic = true },
		CmpItemKindField = { fg = p.magenta, italic = true },
		CmpItemKindConstant = { fg = p.orange, italic = true },
		CmpItemKindMethod = { fg = p.cyan, italic = true },
		CmpBorder = { fg = p.red },
		CmpItemMenu = { fg = p.purple, italic = true },
	}
end

return M
