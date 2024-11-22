local M = {}

---@param theme? string
function M.get(theme)
	local colors = require("four-symbols.palette").setup {
		theme = theme,
	}

	local hl = {}

	hl.normal = {
		a = { bg = colors.bg_05, fg = colors.fg_01, gui = "bold" },
		b = { bg = colors.bg_02, fg = colors.fg_01 },
		c = { bg = colors.bg_01, fg = colors.fg_01 },
	}

	hl.insert = {
		a = { bg = colors.blue, fg = colors.black, gui = "bold" },
		b = { bg = colors.purple, fg = colors.black },
	}

	hl.command = {
		a = { bg = colors.yellow, fg = colors.black },
		b = { bg = colors.orange, fg = colors.black },
		c = { bg = colors.bg_02, fg = colors.fg_01 },
	}

	hl.visual = {
		a = { bg = colors.bg_03, fg = colors.fg_03 },
		b = { bg = colors.bg_01, fg = colors.fg_02 },
		c = { bg = colors.bg_02, fg = colors.fg_01 },
	}

	hl.replace = {
		a = { bg = colors.yellow, fg = colors.black },
		b = { bg = colors.orange, fg = colors.yellow },
		c = { bg = colors.bg_02, fg = colors.fg_01 },
	}

	hl.terminal = {
		a = { bg = colors.blue, fg = colors.black },
		b = { bg = colors.bg_02, fg = colors.bg_mutted },
		c = { bg = colors.bg_02, fg = colors.fg_01 },
	}

	hl.inactive = {
		a = { bg = colors.bg_05, fg = colors.fg_01 },
		b = { bg = colors.bg_05, fg = colors.fg_01, gui = "bold" },
		c = { bg = colors.bg_05, fg = colors.fg_01 },
	}
	return hl
end

return M
