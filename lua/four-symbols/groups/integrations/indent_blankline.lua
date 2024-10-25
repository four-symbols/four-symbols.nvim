local M = {}

function M.get(p)
	return {
		IblIndent = { fg = p.gray },
		IblScope = { fg = p.gray },
	}
end

return M
