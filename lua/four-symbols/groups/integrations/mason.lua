local M = {}

function M.get(p)
	return {
		MasonHeader = { fg = p.fg, bg = p.bg, bold = true },
		MasonHeaderSecondary = { fg = p.fg, bg = p.bg, bold = true },

		MasonHighlight = { fg = p.wood },
		MasonHighlightBlock = { bg = p.wood, fg = p.bg, bold = true },
		MasonHighlightBlockBold = { bg = p.water, fg = p.bg, bold = true },

		MasonHighlightSecondary = { fg = p.magenta },
		MasonHighlightBlockSecondary = { fg = p.red, bg = p.water },
		MasonHighlightBlockBoldSecondary = { fg = p.bg, bg = p.fg, bold = true },

		MasonLink = { fg = p.cyan },

		MasonMuted = { fg = p.fg_hint },
		MasonMutedBlock = { bg = p.bg, fg = p.fg_muted, bold = true },
		MasonMutedBlockBold = { bg = p.metal, fg = p.bg, bold = true },

		MasonError = { fg = p.red },
		MasonWarning = { fg = p.metal },

		MasonHeading = { fg = p.magenta, bold = true },
	}
end

return M
