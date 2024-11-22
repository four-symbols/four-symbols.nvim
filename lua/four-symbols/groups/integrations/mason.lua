local M = {}

function M.get(p)
	return {
		MasonHeader = { fg = p.fg_01, bg = p.bg_01, bold = true },
		MasonHeaderSecondary = { fg = p.fg_01, bg = p.bg_01, bold = true },

		MasonHighlight = { fg = p.green },
		MasonHighlightBlock = { bg = p.green, fg = p.bg_01, bold = true },
		MasonHighlightBlockBold = { bg = p.blue, fg = p.bg_01, bold = true },

		MasonHighlightSecondary = { fg = p.magenta },
		MasonHighlightBlockSecondary = { fg = p.red, bg = p.blue },
		MasonHighlightBlockBoldSecondary = { fg = p.bg_01, bg = p.fg_01, bold = true },

		MasonLink = { fg = p.cyan },

		MasonMuted = { fg = p.fg_03 },
		MasonMutedBlock = { bg = p.bg_01, fg = p.fg_02, bold = true },
		MasonMutedBlockBold = { bg = p.yellow, fg = p.bg_01, bold = true },

		MasonError = { fg = p.red },
		MasonWarning = { fg = p.yellow },

		MasonHeading = { fg = p.magenta, bold = true },
	}
end

return M
