local M = {}

---@param theme? string
function M.get(theme)
	local colors, config = require("four-symbols.palette").setup {
		theme = theme,
	}

	local hl = {}

	hl.normal = {
		a = { bg = colors.bg_bright, fg = colors.black, gui = "bold" },
		b = { bg = colors.bg_muted, fg = colors.bg_bright },
		c = { bg = colors.bg, fg = colors.fg_hint },
	}

	hl.insert = {
		a = { bg = colors.purple, fg = colors.black, gui = "bold" },
		b = { bg = colors.bg_hint, fg = colors.purple },
	}

	hl.command = {
		a = { bg = colors.fire, fg = colors.black },
		b = { bg = colors.bg_hint, fg = colors.fire },
	}

	hl.visual = {
		a = { bg = colors.magente, fg = colors.black },
		b = { bg = colors.bg_hint, fg = colors.magenta },
	}

	hl.replace = {
		a = { bg = colors.metal, fg = colors.black },
		b = { bg = colors.bg_hint, fg = colors.metal },
	}

	hl.terminal = {
		a = { bg = colors.water, fg = colors.black },
		b = { bg = colors.bg_hint, fg = colors.water },
	}

	hl.inactive = {
		a = { bg = colors.bg_bright, fg = colors.black },
		b = { bg = colors.bg_bright, fg = colors.black, gui = "bold" },
		c = { bg = colors.bg_bright, fg = colors.black },
	}
	return hl
end

return M
