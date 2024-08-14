local M = {}

function M.get(p, opts)
	return {
		ColorColumn = { bg = p.gray1 }, -- 使用 'colorcolumn' 设置的列
		Conceal = { fg = p.gray1 }, -- 隐藏文本的替换字符 (参见 'conceallevel')
		Cursor = { fg = p.subtext1, bg = p.fg }, -- 光标下的字符
		lCursor = { fg = p.subtext1, bg = p.fg }, -- 光标下的字符
		CursorIM = { fg = p.subtext1, bg = p.fg }, -- 光标下的字符
		CursorLine = { bg = p.gray4 }, -- 当设置 'cursorline' 时光标所在的屏幕行
		Directory = { fg = p.purple }, -- 目录名 (以及列表中的其他特殊名称)
		DiffAdd = { bg = p.green, fg = p.black }, -- diff 模式：新增行
		DiffChange = { fg = p.yellow, underline = true }, -- diff 模式：更改行
		DiffDelete = { bg = p.orange, fg = p.black }, -- diff 模式：删除行
		DiffText = { bg = p.yellow, fg = p.black }, -- diff 模式：更改行中的更改文本
		EndOfBuffer = { fg = p.bg }, -- 缓冲区末尾
		ErrorMsg = { fg = p.orange }, -- 命令行中的错误消息
		VertSplit = { fg = p.gray2 }, -- 垂直分割窗口的列
		WinSeparator = { fg = p.gray2 }, -- 垂直分割窗口的列
		Folded = { fg = p.gray4 }, -- 折叠关闭时的行
		FoldColumn = { bg = p.bg, fg = p.subtext4 }, -- 显示折叠的列
		SignColumn = { bg = p.bg, fg = p.subtext4 }, -- 显示标志的列
		IncSearch = { fg = p.black, bg = p.yellow }, -- 'incsearch' 高亮; 也用于 ":s///p" 替换的文本
		CurSearch = { fg = p.black, bg = p.yellow }, -- 'cursearch' 高亮; 也用于 ":s///p" 替换的文本
		LineNr = { fg = p.gray4 }, -- 行号显示 (如 =number 和 :# 命令，以及 'number' 或 'relativenumber' 选项设置时)
		CursorLineNr = { fg = p.subtext1 }, -- 光标所在行的行号，当设置 'cursorline' 或 'relativenumber' 时
		MatchParen = { fg = p.yellow, underline = true }, -- 光标下的字符或其前面的配对括号及其匹配
		ModeMsg = { fg = p.gray3, bold = true }, -- 'showmode' 消息 (例如 "-- INSERT --")
		MoreMsg = { fg = p.bright_magenta }, -- more 提示
		NonText = { fg = p.dark3 }, -- '@' 在窗口的末尾，'showbreak' 的字符和其他实际上不存在于文本中的字符 (例如，当双宽字符不适合在行末显示时显示的 ">"). 参见 |hl-EndOfBuffer|
		Normal = { fg = p.fg, bg = opts.transparent and p.none or p.bg }, -- 普通文本
		NormalNC = { fg = p.fg, bg = opts.transparent and p.none or opts.dim_inactive and p.bg_dark or p.bg }, -- 非当前窗口的普通文本
		NormalSB = { fg = p.fg_sidebar, bg = p.bg_sidebar }, -- 侧栏中的普通文本
		NormalFloat = { fg = p.fg_float, bg = p.bg_float }, -- 浮动窗口中的普通文本
		FloatBorder = { fg = p.border_highlight, bg = p.bg_float }, -- 浮动窗口的边框
		Pmenu = { fg = p.fg, bg = p.black }, -- 弹出菜单：普通项
		PmenuSel = { fg = p.white, bg = p.gray3 }, -- 弹出菜单：选中项
		PmenuSbar = { bg = p.gray2 }, -- 弹出菜单：滚动条
		PmenuThumb = { bg = p.gray3 }, -- 弹出菜单：滚动条滑块
		Question = { fg = p.purple }, -- hit-enter 提示和是/否问题
		QuickFixLine = { fg = p.red, bg = p.gray2 }, -- quickfix 窗口中的当前 quickfix 项
		Search = { fg = p.bright_yellow, bg = p.black }, -- 最后一个搜索模式高亮 (参见 'hlsearch')。也用于需要突出的相似项
		SpecialKey = { fg = p.special_grey }, -- 列表中的 Meta 和特殊键 (如 =map)，也用于显示不可打印字符的文本
		SpellBad = { fg = p.orange, underline = true }, -- 拼写检查中未识别的单词。这将与其他高亮一起使用
		SpellCap = { fg = p.yellow }, -- 应该以大写字母开头的单词。这将与其他高亮一起使用
		SpellLocal = { fg = p.yellow }, -- 被拼写检查器识别为另一地区使用的单词。这将与其他高亮一起使用
		SpellRare = { fg = p.yellow }, -- 被拼写检查器识别为很少使用的单词。这将与其他高亮一起使用
		StatusLine = { fg = p.fg, bg = p.gray1 }, -- 当前窗口的状态栏
		StatusLineNC = { fg = p.bg_dark }, -- 非当前窗口的状态栏注意 = 如果这与 "StatusLine" 相等，Vim 将在当前窗口的状态栏中使用 "^^^"
		StatusLineTerm = { fg = p.fg, bg = p.gray1 }, -- 当前 :terminal 窗口的状态栏
		StatusLineTermNC = { fg = p.subtext4 }, -- 非当前 :terminal 窗口的状态栏
		TabLine = { fg = p.subtext4 }, -- 标签页行，非活动标签页标签
		TabLineFill = { bg = p.black }, -- 标签页行，无标签处
		TabLineSel = { fg = p.fg }, -- 标签页行，活动标签页标签
		Terminal = { fg = p.fg, bg = p.black }, -- 终端窗口 (参见 terminal-size-color)
		Title = { fg = p.green }, -- 输出标题 (如 =set all, ":autocmd" 等)
		Italic = { fg = p.blue, italic = true }, -- 斜体文本
		Visual = { bg = p.gray4 }, -- 视觉模式选择
		VisualNOS = { bg = p.gray4 }, -- 当 vim 没有 "Not Owning the Selection" 时的视觉模式选择。仅 X11 Gui's gui-x11 和 xterm-clipboard 支持此功能
		WarningMsg = { fg = p.yellow }, -- 警告消息
		WildMenu = { fg = p.black, bg = p.purple }, -- 'wildmenu' 完成中的当前匹配项
		Winbar = { fg = p.fg, bg = p.gray1 }, -- 窗口栏
		WinbarNC = { fg = p.subtext4, bg = p.bg_dark }, -- 非当前窗口的窗口栏
	}
end

return M
