local M = {}

---@param theme? string
function M.get(theme)
	local colors = require("four-symbols.palette").setup {
		theme = theme,
	}

	local hl = {}

	hl.normal = {
		a = { bg = colors.fg_bright, fg = colors.bg, gui = "bold" },
		b = { bg = colors.fg, fg = colors.bg },
		c = { bg = colors.bg, fg = colors.fg },
	}

	hl.insert = {
		a = { bg = colors.purple, fg = colors.black, gui = "bold" },
		b = { bg = colors.magenta, fg = colors.black },
	}

	hl.command = {
		a = { bg = colors.yellow, fg = colors.black },
		b = { bg = colors.orange, fg = colors.black },
	}

	hl.visual = {
		a = { bg = colors.fg_caption, fg = colors.bg_caption },
		b = { bg = colors.fg_muted, fg = colors.bg_muted },
	}

	hl.replace = {
		a = { bg = colors.yellow, fg = colors.black },
		b = { bg = colors.bg_muted, fg = colors.yellow },
	}

	hl.terminal = {
		a = { bg = colors.blue, fg = colors.black },
		b = { bg = colors.fg_muted, fg = colors.bg_mutted },
	}

	hl.inactive = {
		a = { bg = colors.fg_bright, fg = colors.bg },
		b = { bg = colors.fg_bright, fg = colors.bg, gui = "bold" },
		c = { bg = colors.fg_bright, fg = colors.bg },
	}
	return hl
end

return M
