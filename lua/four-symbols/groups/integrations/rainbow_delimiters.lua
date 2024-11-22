local M = {}

function M.get(p)
	return {
		RainbowDelimiterRed = { fg = p.red, bg = p.bg_01 },
		RainbowDelimiterYellow = { fg = p.yellow, bg = p.bg_01 },
		RainbowDelimiterBlue = { fg = p.blue, bg = p.bg_01 },
		RainbowDelimiterOrange = { fg = p.orange, bg = p.bg_01 },
		RainbowDelimiterGreen = { fg = p.green, bg = p.bg_01 },
		RainbowDelimiterViolet = { fg = p.purple, bg = p.bg_01 },
		RainbowDelimiterCyan = { fg = p.cyan, bg = p.bg_01 },
	}
end

return M
