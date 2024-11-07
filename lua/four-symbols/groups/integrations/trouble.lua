local M = {}

function M.get(c)
	return {
		TroubleText = { fg = c.fg_secondary, bg = c.bg },
		TroubleCount = { fg = c.magenta, bg = c.bg },
		TroubleNormal = { fg = c.fg, bg = c.bg },
	}
end

return M
