local M = {}

function M.get(p)
	return {
		IblIndent = { fg = p.gray2 },
		IblScope = { fg = p.gray3 },
	}
end

return M
