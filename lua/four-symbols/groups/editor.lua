local M = {}
function M.get(p, opts)
	return {
		ColorColumn = { bg = p.gray },
		Conceal = { fg = p.gray },
		Cursor = { fg = p.bg, bg = p.fg },
		lCursor = { fg = p.bg, bg = p.fg },
		CursorIM = { fg = p.bg, bg = p.fg },
		CursorLine = { bg = p.bg_caption },
		Directory = { fg = p.blue },

		-- Diff Neovim 内置高亮组 Highlight Group
		DiffAdd = { bg = p.green, fg = p.black },
		DiffChange = { fg = p.yellow, underline = true },
		DiffDelete = { bg = p.red, fg = p.black },
		DiffText = { bg = p.yellow, fg = p.black },

		EndOfBuffer = { fg = p.bg },
		ErrorMsg = { fg = p.red, bg = p.bg_secondary },

		-- Split border color example nvim-tree border
		VertSplit = { fg = p.bg },
		WinSeparator = { fg = p.bg },

		Folded = { fg = p.gray, bg = p.bg_secondary },
		FoldColumn = { bg = p.bg, fg = p.fg_secondary },
		SignColumn = { bg = p.bg, fg = p.fg_secondary },
		IncSearch = { fg = p.bg, bg = p.orange },
		CurSearch = { fg = p.bg, bg = p.yellow },
		LineNr = { fg = p.gray },
		CursorLineNr = { fg = p.green },
		MatchParen = { fg = p.yellow, bold = true, underline = true },
		ModeMsg = { fg = p.fg, bold = true },
		MoreMsg = { fg = p.green },
		NonText = { fg = p.gray },
		Normal = {
			fg = p.fg,
			bg = opts.transparent and p.none or p.bg,
		},
		NormalNC = { fg = p.fg, bg = opts.transparent and p.none and p.bg_muted or p.bg },
		NormalSB = { fg = p.fg_caption, bg = p.bg_caption },
		NormalFloat = { fg = p.fg_caption, bg = p.bg_muted },
		FloatBorder = { fg = p.fg_muted, bg = p.none },

		Pmenu = { fg = p.fg, bg = p.bg_muted },
		PmenuSel = { fg = p.fg_bright, bg = p.bg_bright },
		PmenuSbar = { bg = p.gray },
		PmenuThumb = { bg = p.gray },

		Question = { fg = p.purple },
		QuickFixLine = { fg = p.bg, bg = p.yellow },
		Search = { fg = p.bg, bg = p.yellow },
		SpecialKey = { fg = p.gray },
		SpellBad = { fg = p.red, underline = true },
		SpellCap = { fg = p.yellow, underline = true },
		SpellLocal = { fg = p.yellow, underline = true },
		SpellRare = { fg = p.purple, underline = true },
		StatusLine = { fg = p.fg, bg = p.bg_secondary },
		StatusLineNC = { fg = p.gray, bg = p.bg_secondary },
		StatusLineTerm = { fg = p.fg, bg = p.bg_secondary },
		StatusLineTermNC = { fg = p.gray, bg = p.bg_secondary },
		TabLine = { fg = p.gray, bg = p.bg_secondary },
		TabLineFill = { bg = p.bg_secondary },
		TabLineSel = { fg = p.fg, bg = p.bg },
		Terminal = { fg = p.fg, bg = p.bg },
		Title = { fg = p.green, bold = true },
		WarningMsg = { fg = p.yellow },
		Whitespace = { fg = p.gray },
		WildMenu = { fg = p.bg, bg = p.blue },
		Winbar = { fg = p.fg, bg = p.bg_secondary },
		WinbarNC = { fg = p.gray, bg = p.bg_secondary },

		TreesitterContext = { bg = p.bg_secondary },
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
