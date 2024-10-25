local M = {}

function M.get(p)
	return {
		RainbowDelimiterRed = { fg = p.red, bg = p.bg },
		RainbowDelimiterYellow = { fg = p.metal, bg = p.bg },
		RainbowDelimiterBlue = { fg = p.water, bg = p.bg },
		RainbowDelimiterOrange = { fg = p.fire, bg = p.bg },
		RainbowDelimiterGreen = { fg = p.wood, bg = p.bg },
		RainbowDelimiterViolet = { fg = p.purple, bg = p.bg },
		RainbowDelimiterCyan = { fg = p.cyan, bg = p.bg },
	}
end

return M
