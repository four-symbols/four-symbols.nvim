local M = {}

function M.get(p)
	return {
		GitSignsAdd = { fg = p.wood },
		GitSignsChange = { fg = p.metal },
		GitSignsDelete = { fg = p.red },
	}
end

return M
