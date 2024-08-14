local M = {}

M.version = "4.8.0" -- x-release-please-version

M.defaults = {
	style = "moon", -- The theme comes in three styles, `storm`, a darker variant `night` and `day`
	light_style = "day", -- The theme is used when the background is set to light
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
	day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
	dim_inactive = false, -- dims inactive windows
	lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

	on_colors = function(colors) end,
	on_highlights = function(highlights, colors) end,

	cache = true, -- When set to true, the theme will be cached for better performance

	plugins = {
		-- enable all plugins when not using lazy.nvim
		-- set to false to manually enable/disable plugins
		all = package.loaded.lazy == nil,
		-- uses your plugin manager to automatically enable needed plugins
		-- currently only lazy.nvim is supported
		auto = true,
		-- add any plugins here that you want to enable
		-- for all possible plugins, see:
		--   * https://github.com/folke/tokyonight.nvim/tree/main/lua/tokyonight/groups
		-- telescope = true,
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
