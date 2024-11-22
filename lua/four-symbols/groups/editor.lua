local M = {}
function M.get(p, opts)
	return {
		ColorColumn = { bg = p.gray },
		Conceal = { fg = p.gray },
		Cursor = { fg = p.bg_01, bg = p.fg_01 },
		lCursor = { fg = p.bg_01, bg = p.fg_01 },
		CursorIM = { fg = p.bg_01, bg = p.fg_01 },
		CursorLine = { bg = p.bg_03 },
		Directory = { fg = p.blue },

		-- Diff Neovim 内置高亮组 Highlight Group
		DiffAdd = { bg = p.green, fg = p.black },
		DiffChange = { fg = p.yellow, underline = true },
		DiffDelete = { bg = p.red, fg = p.black },
		DiffText = { bg = p.yellow, fg = p.black },

		EndOfBuffer = { fg = p.bg_01 },
		ErrorMsg = { fg = p.red, bg = p.bg_04 },

		VertSplit = { fg = p.bg_02 },
		-- Split border color example nvim-tree border
		WinSeparator = { fg = p.bg_04 },

		Folded = { fg = p.gray, bg = p.bg_04 },
		FoldColumn = { bg = p.bg_01, fg = p.fg_04 },
		SignColumn = { bg = p.bg_01, fg = p.fg_04 },
		IncSearch = { fg = p.bg_01, bg = p.orange },
		CurSearch = { fg = p.bg_01, bg = p.yellow },
		LineNr = { fg = p.gray },
		CursorLineNr = { fg = p.green },
		MatchParen = { fg = p.yellow, bold = true, underline = true },
		ModeMsg = { fg = p.fg_01, bold = true },
		MoreMsg = { fg = p.green },
		NonText = { fg = p.gray },
		Normal = {
			fg = p.fg_01,
			bg = opts.transparent and p.none or p.bg_01,
		},
		NormalNC = { fg = p.fg_01, bg = opts.transparent and p.none and p.bg_02 or p.bg_01 },
		NormalSB = { fg = p.fg_03, bg = p.bg_03 },
		NormalFloat = { fg = p.fg_03, bg = p.bg_02 },
		FloatBorder = { fg = p.fg_02, bg = p.none },

		Pmenu = { fg = p.fg_01, bg = p.bg_02 },
		PmenuSel = { fg = p.fg_05, bg = p.bg_05 },
		PmenuSbar = { bg = p.gray },
		PmenuThumb = { bg = p.gray },

		Question = { fg = p.purple },
		QuickFixLine = { fg = p.bg_01, bg = p.yellow },
		Search = { fg = p.bg_01, bg = p.yellow },
		SpecialKey = { fg = p.gray },
		SpellBad = { fg = p.red, underline = true },
		SpellCap = { fg = p.yellow, underline = true },
		SpellLocal = { fg = p.yellow, underline = true },
		SpellRare = { fg = p.purple, underline = true },
		StatusLine = { fg = p.fg_01, bg = p.bg_04 },
		StatusLineNC = { fg = p.gray, bg = p.bg_04 },
		StatusLineTerm = { fg = p.fg_01, bg = p.bg_04 },
		StatusLineTermNC = { fg = p.gray, bg = p.bg_04 },
		TabLine = { fg = p.gray, bg = p.bg_04 },
		TabLineFill = { bg = p.bg_04 },
		TabLineSel = { fg = p.fg_01, bg = p.bg_01 },
		Terminal = { fg = p.fg_01, bg = p.bg_01 },
		Title = { fg = p.green, bold = true },
		WarningMsg = { fg = p.yellow },
		Whitespace = { fg = p.gray },
		WildMenu = { fg = p.bg_01, bg = p.blue },
		Winbar = { fg = p.fg_01, bg = p.bg_04 },
		WinbarNC = { fg = p.gray, bg = p.bg_04 },

		TreesitterContext = { bg = p.bg_04 },
		Hlargs = { fg = p.yellow },

		-- Diagnostics
		DiagnosticOk = { fg = p.green },
		DiagnosticError = { fg = p.red },
		DiagnosticWarn = { fg = p.yellow },
		DiagnosticInfo = { fg = p.purple },
		DiagnosticHint = { fg = p.blue },
		DiagnosticUnderlineError = { fg = p.red, underline = true },
		DiagnosticUnderlineWarn = { fg = p.yellow, underline = true },
		DiagnosticUnderlineInfo = { fg = p.purple, underline = true },
		DiagnosticUnderlineHint = { fg = p.cyan, underline = true },
		DiagnosticUnderlineOk = { sp = p.green, undercurl = true },
	}
end
return M
