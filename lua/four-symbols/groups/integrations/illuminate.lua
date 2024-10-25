local M = {}
function M.get(p)
	return {
		IlluminatedWordText = { bg = p.gray },
		IlluminatedWordRead = { bg = p.gray },
		IlluminatedWordWrite = { bg = p.gray },
	}
end

return M
