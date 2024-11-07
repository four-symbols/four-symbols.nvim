local M = {}

function M.get(p)
	return {
		GitSignsAdd = { fg = p.green },
		GitSignsChange = { fg = p.yellow },
		GitSignsDelete = { fg = p.red },
	}
end

return M
