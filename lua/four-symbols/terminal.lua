local M = {}

function M.setup(p)
	vim.g.terminal_color_0 = p.black
	vim.g.terminal_color_1 = p.red
	vim.g.terminal_color_2 = p.wood
	vim.g.terminal_color_3 = p.metal
	vim.g.terminal_color_4 = p.water
	vim.g.terminal_color_5 = p.purple
	vim.g.terminal_color_6 = p.cyan
	vim.g.terminal_color_7 = p.fg
	vim.g.terminal_color_8 = p.black
	vim.g.terminal_color_9 = p.red
	vim.g.terminal_color_10 = p.wood
	vim.g.terminal_color_11 = p.metal
	vim.g.terminal_color_12 = p.water
	vim.g.terminal_color_13 = p.purple
	vim.g.terminal_color_14 = p.cyan
	vim.g.terminal_color_15 = p.fg
	vim.g.terminal_color_background = p.bg
	vim.g.terminal_color_foreground = p.fg
end

return M
