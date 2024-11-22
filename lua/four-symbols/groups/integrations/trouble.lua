local M = {}

function M.get(c)
	return {
		TroubleText = { fg = c.fg_04, bg = c.bg_01 },
		TroubleCount = { fg = c.magenta, bg = c.bg_01 },
		TroubleNormal = { fg = c.fg_01, bg = c.bg_01 },
	}
end

return M
