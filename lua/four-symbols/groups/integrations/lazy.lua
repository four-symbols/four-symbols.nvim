local M = {}

function M.get(p)
	return {
		LazyDimmed = { fg = p.fg_caption },
	}
end

return M
