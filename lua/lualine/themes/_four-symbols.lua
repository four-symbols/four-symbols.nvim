local M = {}

---@param theme? string
function M.get(theme)
	local colors = require("four-symbols.palette").setup {
		theme = theme,
	}

	local hl = {}

	hl.normal = {
		a = { bg = colors.bg_bright, fg = colors.fg, gui = "bold" },
		b = { bg = colors.bg_muted, fg = colors.fg },
		c = { bg = colors.bg, fg = colors.fg },
	}

	hl.insert = {
		a = { bg = colors.blue, fg = colors.black, gui = "bold" },
		b = { bg = colors.purple, fg = colors.black },
	}

	hl.command = {
		a = { bg = colors.yellow, fg = colors.black },
		b = { bg = colors.orange, fg = colors.black },
		c = { bg = colors.bg_muted, fg = colors.fg },
	}

	hl.visual = {
		a = { bg = colors.bg_caption, fg = colors.fg_caption },
		b = { bg = colors.bg, fg = colors.fg_muted },
		c = { bg = colors.bg_muted, fg = colors.fg },
	}

	hl.replace = {
		a = { bg = colors.yellow, fg = colors.black },
		b = { bg = colors.orange, fg = colors.yellow },
		c = { bg = colors.bg_muted, fg = colors.fg },
	}

	hl.terminal = {
		a = { bg = colors.blue, fg = colors.black },
		b = { bg = colors.bg_muted, fg = colors.bg_mutted },
		c = { bg = colors.bg_muted, fg = colors.fg },
	}

	hl.inactive = {
		a = { bg = colors.bg_bright, fg = colors.fg },
		b = { bg = colors.bg_bright, fg = colors.fg, gui = "bold" },
		c = { bg = colors.bg_bright, fg = colors.fg },
	}
	return hl
end

return M
