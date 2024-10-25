local M = {}

function M.load(opts)
	opts = require("four-symbols.config").extend(opts)

	vim.cmd "hi clear"
	if vim.fn.exists "syntax_on" then vim.cmd "syntax reset" end
	vim.o.background = "dark"
	vim.o.termguicolors = true
	vim.g.colors_name = "four-symbols-" .. opts.theme

	return require("four-symbols.theme").setup(opts)
end

M.setup = require("four-symbols.config").setup

return M
