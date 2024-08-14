local config = require "four-symbols.config"
local editor_highlights = require "four-symbols.groups.editor"
local syntax_highlights = require "four-symbols.groups.syntax"
local terminal = require "four-symbols.terminal"

local M = {}

local integrations_highlights = {
	alpha = require "four-symbols.groups.integrations.alpha",
	cmp = require "four-symbols.groups.integrations.cmp",
	flash = require "four-symbols.groups.integrations.flash",
	gitsigns = require "four-symbols.groups.integrations.gitsigns",
	hop = require "four-symbols.groups.integrations.hop",
	indent_blankline = require "four-symbols.groups.integrations.indent_blankline",
	lazy = require "four-symbols.groups.integrations.lazy",
	lsp = require "four-symbols.groups.integrations.lsp",
	markdown = require "four-symbols.groups.integrations.markdown",
	mason = require "four-symbols.groups.integrations.mason",
	mini = require "four-symbols.groups.integrations.mini",
	navic = require "four-symbols.groups.integrations.navic",
	neo_tree = require "four-symbols.groups.integrations.neo_tree",
	neorg = require "four-symbols.groups.integrations.neorg",
	noice = require "four-symbols.groups.integrations.noice",
	notify = require "four-symbols.groups.integrations.notify",
	rainbow_delimiters = require "four-symbols.groups.integrations.rainbow_delimiters",
	telescope = require "four-symbols.groups.integrations.telescope",
	treesitter = require "four-symbols.groups.integrations.treesitter",
	illuminate = require "four-symbols.groups.integrations.illuminate",
}
local integrations = {}

for integration, enabled in pairs(config.integrations) do
	if enabled then
		local highlights = integrations_highlights[integration]
		table.insert(integrations, { enabled = true, highlights = highlights })
	end
end

local function load_highlights(highlights)
	for group_name, group_settings in pairs(highlights) do
		vim.api.nvim_set_hl(0, group_name, group_settings)
	end
end

function M.setup(opts)
	load_highlights(editor_highlights)
	load_highlights(syntax_highlights)
	for _, plugin in ipairs(integrations) do
		if plugin.enabled then load_highlights(plugin.highlights) end
	end

	load_highlights(config.highlight_overrides)

	if config.terminal_colors then terminal.setup() end
end

return M
