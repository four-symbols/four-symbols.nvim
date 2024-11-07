local M = {}

function M.get(p)
	return {
		MasonHeader = { fg = p.fg, bg = p.bg, bold = true },
		MasonHeaderSecondary = { fg = p.fg, bg = p.bg, bold = true },

		MasonHighlight = { fg = p.green },
		MasonHighlightBlock = { bg = p.green, fg = p.bg, bold = true },
		MasonHighlightBlockBold = { bg = p.blue, fg = p.bg, bold = true },

		MasonHighlightSecondary = { fg = p.magenta },
		MasonHighlightBlockSecondary = { fg = p.red, bg = p.blue },
		MasonHighlightBlockBoldSecondary = { fg = p.bg, bg = p.fg, bold = true },

		MasonLink = { fg = p.cyan },

		MasonMuted = { fg = p.fg_caption },
		MasonMutedBlock = { bg = p.bg, fg = p.fg_muted, bold = true },
		MasonMutedBlockBold = { bg = p.yellow, fg = p.bg, bold = true },

		MasonError = { fg = p.red },
		MasonWarning = { fg = p.yellow },

		MasonHeading = { fg = p.magenta, bold = true },
	}
end

return M
