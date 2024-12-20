local M = {}

function M.get(p, opts)
	local styles = vim.tbl_map(function(value)
		return setmetatable(value, {
			__add = function(a, b) return vim.tbl_extend("force", a, b) end,
		})
	end, opts.styles)

	return {
		-- base
		["@boolean"] = { fg = p.orange } + styles.booleans,
		["@constructor"] = { fg = p.caption },
		["@constant.builtin"] = { fg = p.yellow },
		["@keyword.function"] = { fg = p.purple } + styles.functions,
		["@namespace"] = { fg = p.red, italic = true },
		["@parameter"] = { fg = p.magenta },
		["@import.identifier"] = { fg = p.purple },
		["@property"] = { fg = p.white },
		["@punctuation"] = { fg = p.caption },
		["@punctuation.delimiter"] = { fg = p.caption },
		["@punctuation.bracket"] = { fg = p.caption },
		["@punctuation.special"] = { fg = p.caption },
		["@string.documentation"] = { fg = p.green } + styles.comments,
		["@string.regex"] = { fg = p.purple },
		["@string.escape"] = { fg = p.magenta },
		["@symbol"] = { fg = p.yellow },
		["@tag"] = { fg = p.red },
		["@tag.attribute"] = { fg = p.cyan, italic = true },
		["@tag.delimiter"] = { fg = p.caption },
		["@type.builtin"] = { fg = p.magenta },
		["@variable"] = { fg = p.white } + styles.variables,
		["@variable.builtin"] = { fg = p.purple } + styles.variables,
		["@variable.parameter"] = { fg = p.magenta } + styles.variables,
		["@constructor.javascript"] = { fg = p.red },
		["@keyword.clojure"] = { fg = p.red } + styles.keywords,
		["@text.underline"] = { link = "Underlined" },
		["@text.strong"] = { bold = true },
		["@text.strikethrough"] = { strikethrough = true },
		["@text.italic"] = { italic = true },

		-- markdown
		["@spell.markdown"] = { fg = p.white, bg = p.bg_01 },
		["@markup.heading"] = { fg = p.fg_01, bold = true },
		["@markup.heading.1"] = { fg = p.blue, bold = true },
		["@markup.heading.1.marker"] = { link = "@comment" },
		["@markup.heading.2"] = { fg = p.blue, bold = true },
		["@markup.heading.2.marker"] = { link = "@comment" },
		["@markup.heading.3"] = { fg = p.blue, bold = true },
		["@markup.heading.3.marker"] = { link = "@comment" },
		["@markup.heading.4"] = { fg = p.blue, bold = true },
		["@markup.heading.4.marker"] = { link = "@comment" },
		["@markup.heading.5"] = { fg = p.blue, bold = true },
		["@markup.heading.5.marker"] = { link = "@comment" },
		["@markup.heading.6"] = { fg = p.blue, bold = true },
		["@markup.heading.6.marker"] = { link = "@comment" },
		["@markup.link"] = { fg = p.caption },
		["@markup.link.label"] = { fg = p.blue, bold = true }, -- line code
		["@markup.link.url"] = { fg = p.purple },
		["@markup.list"] = { fg = p.fg_04, bold = true },
		["@markup.list.checked"] = { fg = p.fg_04 },
		["@markup.list.unchecked"] = { fg = p.fg_04 },
		["@markup.raw.block"] = { fg = p.purple, bg = p.bg_04 },
		["@markup.raw.delimiter"] = { fg = p.purple, bg = p.bg_04 },
		["@markup.raw.markdown_inline"] = { fg = p.green, bold = true },
		["@markup.quote"] = { fg = p.caption },
		["@markup.list.checked.markdown"] = { fg = p.green },
		["@markup.underline"] = { link = "@text.underline" },
		["@markup.strong"] = { link = "@text.strong" },
		["@markup.italic"] = { link = "@text.italic" },
		["@markup.strikethrough"] = { link = "@text.strikethrough" },
		["@markup.strong.markdown_inline"] = { fg = p.purple, bold = true }, -- strong

		-- lua
		["@variable.lua"] = { fg = p.red },
	}
end

return M
