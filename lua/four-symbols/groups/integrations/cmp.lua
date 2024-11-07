local M = {}

function M.get(p, opts)
	return {
		-- PmenuSel = { bg = "", fg = "" },
		-- Pmenu = { fg = "", bg = "" },
		CmpBorder = { fg = p.fg_secondary },
		CmpItemAbbrDeprecated = { fg = p.gray, bg = "NONE", strikethrough = true },
		CmpItemAbbrMatch = { fg = p.blue, bg = "NONE", bold = true },
		CmpItemAbbrMatchFuzzy = { fg = p.blue, bg = "NONE", bold = true },
		CmpItemMenu = { fg = p.magenta, bg = "NONE", italic = true },

		CmpItemKindField = { fg = p.bg_secondary, bg = p.fg_secondary },
		CmpItemKindProperty = { fg = p.bg_secondary, bg = p.fg_secondary },
		CmpItemKindEvent = { fg = p.bg_secondary, bg = p.fg_secondary },

		CmpItemKindText = { fg = p.bg_muted, bg = p.green },
		CmpItemKindEnum = { fg = p.bg_muted, bg = p.green },
		CmpItemKindKeyword = { fg = p.bg_muted, bg = p.green },

		CmpItemKindConstant = { fg = p.yellow, bg = p.gray },
		CmpItemKindConstructor = { fg = p.yellow, bg = p.gray },
		CmpItemKindReference = { fg = p.yellow, bg = p.gray },

		CmpItemKindFunction = { fg = p.white, bg = p.purple },
		CmpItemKindStruct = { fg = p.white, bg = p.purple },
		CmpItemKindClass = { fg = p.white, bg = p.purple },
		CmpItemKindModule = { fg = p.white, bg = p.purple },
		CmpItemKindOperator = { fg = p.white, bg = p.purple },

		CmpItemKindVariable = { fg = p.white, bg = p.brown },
		CmpItemKindFile = { fg = p.white, bg = p.brown },

		CmpItemKindUnit = { fg = p.white, bg = p.yellow },
		CmpItemKindSnippet = { fg = p.white, bg = p.yellow },
		CmpItemKindFolder = { fg = p.white, bg = p.yellow },

		CmpItemKindMethod = { fg = p.white, bg = p.magenta },
		CmpItemKindValue = { fg = p.white, bg = p.magenta },
		CmpItemKindEnumMember = { fg = p.white, bg = p.magenta },

		CmpItemKindInterface = { fg = p.bg, bg = p.fg },
		CmpItemKindColor = { fg = p.bg, bg = p.fg },
		CmpItemKindTypeParameter = { fg = p.bg, bg = p.fg },
	}
end

return M
