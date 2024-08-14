local M = {}
function M.get(p)
	return {
		IlluminatedWordText = { bg = p.gray3 },
		IlluminatedWordRead = { bg = p.gray3 },
		IlluminatedWordWrite = { bg = p.gray3 },
	}
end

return M
