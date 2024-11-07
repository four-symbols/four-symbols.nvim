-- Vim 内置语法高亮组
local M = {}
function M.get(p, opts)
	local styles = vim.tbl_map(function(value)
		return setmetatable(value, {
			__add = function(a, b) return vim.tbl_extend("force", a, b) end,
		})
	end, opts.styles)
	return {
		Comment = { fg = p.gray, italic = true } + styles.comments,
		Constant = { fg = p.yellow },
		String = { fg = p.green },
		Character = { fg = p.blue },
		Number = { fg = p.orange },
		Boolean = { fg = p.orange } + styles.booleans,
		Float = { fg = p.orange },
		Identifier = { fg = p.caption } + styles.identifiers,
		Function = { fg = p.blue } + styles.functions,
		Statement = { fg = p.magenta, italic = true },
		Conditional = { fg = p.magenta },
		Repeat = { fg = p.magenta },
		Label = { fg = p.red },
		Operator = { fg = p.fg_muted },
		Keyword = { fg = p.purple, italic = true } + styles.keywords,
		Exception = { fg = p.red },
		PreProc = { fg = p.yellow },
		Include = { fg = p.purple },
		Define = { fg = p.purple },
		Macro = { fg = p.purple },
		PreCondit = { fg = p.yellow },
		Type = { fg = p.fg_caption },
		StorageClass = { fg = p.orange },
		Typedef = { fg = p.yellow },
		Structure = { fg = p.yellow },
		Special = { fg = p.red },
		SpecialChar = { fg = p.red },
		Tag = { fg = p.green },
		Delimiter = { fg = p.fg_muted },
		SpecialComment = { fg = p.gray },
		Debug = { fg = p.red },
		Underlined = { underline = true },
		Error = { fg = p.red },
		Todo = { fg = p.yellow, bg = p.bg_secondary },
		-- HTML
		htmlArg = { fg = p.orange, italic = true },
		htmlEndTag = { fg = p.fg_muted },
		htmlTitle = { fg = p.fg },
		htmlTag = { fg = p.fg_muted },
		htmlTagN = { fg = p.magenta },
		htmlTagName = { fg = p.magenta },

		diffAdded = { fg = p.green },
		diffRemoved = { fg = p.red },
		diffChanged = { fg = p.yellow },
		diffOldFile = { fg = p.bg_secondary },
		diffNewFile = { fg = p.fg },
		diffFile = { fg = p.cyan },
		diffLine = { fg = p.fg_secondary },
		diffIndexLine = { fg = p.magenta },

		Directory = { fg = p.blue },
		Title = { fg = p.magenta, bold = true },
		WarningMsg = { fg = p.yellow },
		MoreMsg = { fg = p.green },
		ModeMsg = { fg = p.fg, bold = true },
		MatchParen = { fg = p.cyan, bold = true },
		NonText = { fg = p.gray },
		SpecialKey = { fg = p.gray },
		Visual = { bg = p.bg_caption },
		VisualNOS = { bg = p.bg_caption },
		Search = { fg = p.bg_secondary, bg = p.yellow },
		IncSearch = { fg = p.bg_secondary, bg = p.orange },
		CursorLine = { bg = p.bg_caption },
		CursorColumn = { bg = p.bg_caption },
		ColorColumn = { bg = p.gray },
		LineNr = { fg = p.gray },
		CursorLineNr = { fg = p.blue },
		SignColumn = { fg = p.fg },
		Folded = { fg = p.gray, bg = p.bg_secondary },
		FoldColumn = { fg = p.gray },
	}
end
return M
