local M = {}
function M.get(p, opts)
	return {
		ColorColumn = { bg = p.gray }, -- 使用 'colorcolumn' 设置的列
		Conceal = { fg = p.gray }, -- 隐藏文本的替换字符 (参见 'conceallevel')
		Cursor = { fg = p.bg, bg = p.fg }, -- 光标下的字符
		lCursor = { fg = p.bg, bg = p.fg }, -- 光标下的字符
		CursorIM = { fg = p.bg, bg = p.fg }, -- 光标下的字符
		CursorLine = { bg = p.bg_secondary }, -- 当设置 'cursorline' 时光标所在的屏幕行
		Directory = { fg = p.water }, -- 目录名 (以及列表中的其他特殊名称)

		-- Diff Neovim 内置高亮组 Highlight Group
		DiffAdd = { bg = p.wood, fg = p.black }, -- diff 模式：新增行
		DiffChange = { fg = p.metal, underline = true }, -- diff 模式：更改行
		DiffDelete = { bg = p.red, fg = p.black }, -- diff 模式：删除行
		DiffText = { bg = p.metal, fg = p.black }, -- diff 模式：更改行中的更改文本

		EndOfBuffer = { fg = p.bg }, -- 缓冲区末尾
		ErrorMsg = { fg = p.red, bg = p.bg_secondary }, -- 命令行中的错误消息
		VertSplit = { fg = p.gray }, -- 垂直分割窗口的列
		WinSeparator = { fg = p.gray }, -- 垂直分割窗口的列
		Folded = { fg = p.gray, bg = p.bg_secondary }, -- 折叠关闭时的行
		FoldColumn = { bg = p.bg, fg = p.fg_secondary }, -- 显示折叠的列
		SignColumn = { bg = p.bg, fg = p.fg_secondary }, -- 显示标志的列
		IncSearch = { fg = p.bg, bg = p.fire }, -- 'incsearch' 高亮; 也用于 ":s///p" 替换的文本
		CurSearch = { fg = p.bg, bg = p.metal }, -- 'cursearch' 高亮; 也用于 ":s///p" 替换的文本
		LineNr = { fg = p.gray }, -- 行号显示 (如 =number 和 :# 命令，以及 'number' 或 'relativenumber' 选项设置时)
		CursorLineNr = { fg = p.wood }, -- 光标所在行的行号，当设置 'cursorline' 或 'relativenumber' 时
		MatchParen = { fg = p.metal, bold = true, underline = true }, -- 光标下的字符或其前面的配对括号及其匹配
		ModeMsg = { fg = p.fg, bold = true }, -- 'showmode' 消息 (例如 "-- INSERT --")
		MoreMsg = { fg = p.wood }, -- more 提示
		NonText = { fg = p.gray }, -- '@' 在窗口的末尾，'showbreak' 的字符和其他实际上不存在于文本中的字符 (例如，当双宽字符不适合在行末显示时显示的 ">")
		Normal = {
			fg = p.fg,
			bg = opts.transparent and p.none or p.bg,
		},
		NormalNC = { fg = p.fg, bg = opts.transparent and p.none and p.bg_secondary or p.bg }, -- 非当前窗口的普通文本
		NormalSB = { fg = p.fg, bg = p.bg_secondary }, -- 侧栏中的普通文本
		NormalFloat = { fg = p.fg, bg = p.bg_secondary }, -- 浮动窗口中的普通文本
		FloatBorder = { fg = p.water, bg = p.bg_secondary }, -- 浮动窗口的边框
		Pmenu = { fg = p.fg, bg = p.bg }, -- 弹出菜单：普通项 - lsp cmp .... 代码提示菜单
		PmenuSel = { fg = p.bg, bg = p.water }, -- 弹出菜单：选中项
		PmenuSbar = { bg = p.gray }, -- 弹出菜单：滚动条
		PmenuThumb = { bg = p.gray }, -- 弹出菜单：滚动条滑块
		Question = { fg = p.purple }, -- hit-enter 提示和是/否问题
		QuickFixLine = { fg = p.bg, bg = p.metal }, -- quickfix 窗口中的当前 quickfix 项
		Search = { fg = p.bg, bg = p.metal }, -- 最后一个搜索模式高亮 (参见 'hlsearch')。也用于需要突出的相似项
		SpecialKey = { fg = p.gray }, -- 列表中的 Meta 和特殊键 (如 =map)，也用于显示不可打印字符的文本
		SpellBad = { fg = p.red, underline = true }, -- 拼写检查中未识别的单词。这将与其他高亮一起使用
		SpellCap = { fg = p.metal, underline = true }, -- 应该以大写字母开头的单词。这将与其他高亮一起使用
		SpellLocal = { fg = p.metal, underline = true }, -- 被拼写检查器识别为另一地区使用的单词。这将与其他高亮一起使用
		SpellRare = { fg = p.purple, underline = true }, -- 被拼写检查器识别为很少使用的单词。这将与其他高亮一起使用
		StatusLine = { fg = p.fg, bg = p.bg_secondary }, -- 当前窗口的状态栏
		StatusLineNC = { fg = p.gray, bg = p.bg_secondary }, -- 非当前窗口的状态栏
		StatusLineTerm = { fg = p.fg, bg = p.bg_secondary }, -- 当前 :terminal 窗口的状态栏
		StatusLineTermNC = { fg = p.gray, bg = p.bg_secondary }, -- 非当前 :terminal 窗口的状态栏
		TabLine = { fg = p.gray, bg = p.bg_secondary }, -- 标签页行，非活动标签页标签
		TabLineFill = { bg = p.bg_secondary }, -- 标签页行，无标签处
		TabLineSel = { fg = p.fg, bg = p.bg }, -- 标签页行，活动标签页标签
		Terminal = { fg = p.fg, bg = p.bg }, -- 终端窗口 (参见 terminal-size-color)
		Title = { fg = p.wood, bold = true }, -- 输出标题 (如 =set all, ":autocmd" 等)
		WarningMsg = { fg = p.metal }, -- 警告消息
		Whitespace = { fg = p.gray }, -- 'listchars' 空白字符
		WildMenu = { fg = p.bg, bg = p.water }, -- 'wildmenu' 完成中的当前匹配项
		Winbar = { fg = p.fg, bg = p.bg_secondary }, -- 窗口栏
		WinbarNC = { fg = p.gray, bg = p.bg_secondary }, -- 非当前窗口的窗口栏

		-- 树状结构
		TreesitterContext = { bg = p.bg_secondary },
		Hlargs = { fg = p.metal },

		-- 诊断
		DiagnosticError = { fg = p.red },
		DiagnosticWarn = { fg = p.metal },
		DiagnosticInfo = { fg = p.water },
		DiagnosticHint = { fg = p.cyan },
		DiagnosticOk = { fg = p.wood },
		DiagnosticUnderlineError = { sp = p.red, undercurl = true },
		DiagnosticUnderlineWarn = { sp = p.metal, undercurl = true },
		DiagnosticUnderlineInfo = { sp = p.water, undercurl = true },
		DiagnosticUnderlineHint = { sp = p.cyan, undercurl = true },
		DiagnosticUnderlineOk = { sp = p.wood, undercurl = true },
	}
end
return M
