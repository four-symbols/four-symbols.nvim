local M = {}

function M.get(p)
	return {
		IblIndent = { fg = p.bg_02 },
		IblScope = { fg = p.bg_02 },
	}
end

return M
