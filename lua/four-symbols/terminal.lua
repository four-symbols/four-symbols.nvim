local M = {}

function M.setup(p)
	vim.g.terminal_color_0 = p.black
	vim.g.terminal_color_1 = p.red
	vim.g.terminal_color_2 = p.green
	vim.g.terminal_color_3 = p.yellow
	vim.g.terminal_color_4 = p.blue
	vim.g.terminal_color_5 = p.purple
	vim.g.terminal_color_6 = p.cyan
	vim.g.terminal_color_7 = p.fg_01
	vim.g.terminal_color_8 = p.black
	vim.g.terminal_color_9 = p.red
	vim.g.terminal_color_10 = p.green
	vim.g.terminal_color_11 = p.yellow
	vim.g.terminal_color_12 = p.blue
	vim.g.terminal_color_13 = p.purple
	vim.g.terminal_color_14 = p.cyan
	vim.g.terminal_color_15 = p.fg_01
	vim.g.terminal_color_background = p.bg_01
	vim.g.terminal_color_foreground = p.fg_01
end

return M
