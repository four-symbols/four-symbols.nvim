local M = {}

function M.get(p)
	return {
		MiniFilesBorder = { link = "FloatBorder" },
		MiniFilesBorderModified = { fg = p.blue },
		MiniFilesCursorLine = { link = "CursorLine" },
		MiniFilesDirectory = { link = "Directory" },
		MiniFilesFile = { fg = p.fg_01 },
		MiniFilesNormal = { link = "NormalFloat" },
		MiniFilesTitle = { fg = p.red },
		MiniFilesTitleFocused = { fg = p.fg_01, bold = true },
	}
end

return M
