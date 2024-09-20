local M = {}

function M.get(c)
	return {
		TroubleText = { fg = c.fg_dark },
		TroubleCount = { fg = c.magenta, bg = c.fg_gutter },
		TroubleNormal = { fg = c.fg, bg = c.bg_sidebar },
	}
end

return M
