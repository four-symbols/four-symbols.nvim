local M = {}

function M.get(p)
	return {
		LazyDimmed = { fg = p.fg_hint },
	}
end

return M
