local M = {}

function M.get(p)
	return {
		IblIndent = { fg = p.bg_muted },
		IblScope = { fg = p.bg_muted },
	}
end

return M
