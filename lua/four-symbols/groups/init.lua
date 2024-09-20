local Editor = require "four-symbols.groups.editor"
local Syntax = require "four-symbols.groups.syntax"
local Alpha = require "four-symbols.groups.integrations.alpha"
local Cmp = require "four-symbols.groups.integrations.cmp"
local Flash = require "four-symbols.groups.integrations.flash"
local Gitsigns = require "four-symbols.groups.integrations.gitsigns"
local Hop = require "four-symbols.groups.integrations.hop"
local Illuminate = require "four-symbols.groups.integrations.illuminate"
local IndentBlankline = require "four-symbols.groups.integrations.indent_blankline"
local Lazy = require "four-symbols.groups.integrations.lazy"
local Lsp = require "four-symbols.groups.integrations.lsp"
local Markdown = require "four-symbols.groups.integrations.markdown"
local Mason = require "four-symbols.groups.integrations.mason"
local Mini = require "four-symbols.groups.integrations.mini"
local Navic = require "four-symbols.groups.integrations.navic"
local NeoTree = require "four-symbols.groups.integrations.neo_tree"
local Neorg = require "four-symbols.groups.integrations.neorg"
local Noice = require "four-symbols.groups.integrations.noice"
local Notify = require "four-symbols.groups.integrations.notify"
local RainbowDelimiters = require "four-symbols.groups.integrations.rainbow_delimiters"
local Telescope = require "four-symbols.groups.integrations.telescope"
local TreeSitter = require "four-symbols.groups.integrations.treesitter"
local Trouble = require "four-symbols.groups.integrations.trouble"

local M = {}

function M.setup(colors, opts)
	local groups = {
		editor = true,
	}

	local groupsColor = {
		editor = Editor.get(colors, opts),
		syntax = Syntax.get(colors, opts),
		alpha = Alpha.get(colors, opts),
		cmp = Cmp.get(colors, opts),
		flash = Flash.get(colors),
		gitsigns = Gitsigns.get(colors),
		hop = Hop.get(colors),
		illuminate = Illuminate.get(colors),
		indent_blankline = IndentBlankline.get(colors),
		lazy = Lazy.get(colors),
		lsp = Lsp.get(colors),
		markdown = Markdown.get(colors),
		mason = Mason.get(colors),
		mini = Mini.get(colors),
		navic = Navic.get(colors),
		neotree = NeoTree.get(colors),
		neorg = Neorg.get(colors),
		noice = Noice.get(colors),
		notify = Notify.get(colors),
		rainbow_delimiters = RainbowDelimiters.get(colors),
		telescope = Telescope.get(colors),
		treesitter = TreeSitter.get(colors, opts),
		trouble = Trouble.get(colors),
	}

	local result = {}

	for _, subtable in pairs(groupsColor) do
		for k, v in pairs(subtable) do
			result[k] = v
		end
	end

	return result, groups
end

return M
