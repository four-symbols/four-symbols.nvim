local M = {}

M.version = "1.0.0" -- x-release-please-version

M.defaults = {
	theme = "azure-dragon", -- The theme comes in three styles, `storm`, a darker variant `night` and `day`
	transparent = false, -- Enable this to disable setting the background color
	terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
	styles = {
		comments = {},
		keywords = {},
		identifiers = {},
		functions = {},
		variables = {},
		booleans = {},
	},
	plugins = {
		editor = true,
		syntax = true,
		alpha = true,
		cmp = true,
		flash = true,
		gitsigns = true,
		hop = true,
		illuminate = true,
		indent_blankline = true,
		lazy = true,
		lsp = true,
		markdown = true,
		mason = true,
		mini = true,
		navic = true,
		neotree = true,
		neorg = true,
		noice = true,
		notify = true,
		rainbow_delimiters = true,
		telescope = true,
		treesitter = true,
		trouble = true,
		dashboard = true,
		render_markdown = true,
		blink = true,
	},
}

M.options = nil

function M.setup(options) M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {}) end

function M.extend(opts) return opts and vim.tbl_deep_extend("force", {}, M.options, opts) or M.options end

setmetatable(M, {
	__index = function(_, k)
		if k == "options" then return M.defaults end
	end,
})

return M
