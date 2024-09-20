local M = {}
function M.get(p, opts)
	-- 将 config.styles 表中的每个值应用一个函数，并返回新的表 styles。
	-- 在应用的函数中，每个值都会被设置元表，使其支持 __add 元方法，该方法定义了表相加时的行为。
	-- 元表允许改变或扩展表的行为。在这里，元表的 __add 元方法定义了两个表相加（使用 + 运算符）时的行为
	local styles = vim.tbl_map(function(value)
		return setmetatable(value, {
			__add = function(a, b) return vim.tbl_extend("force", a, b) end,
		})
	end, opts.styles)
	-- vim.notify(vim.inspect(styles), vim.log.levels.INFO)
	return {
		Comment = { fg = p.gray3, italic = true } + styles.comments, -- 任何注释
		Constant = { fg = p.yellow }, -- 任何常量
		String = { fg = p.green }, -- 字符串常量："这是一个字符串"
		Character = { fg = p.orange }, -- 字符常量：'p'，'\n'
		Number = { fg = p.orange }, -- 数字常量：234，0xff
		Boolean = { fg = p.orange } + styles.booleans, -- 布尔常量：TRUE，false
		Float = { fg = p.orange }, -- 浮点常量：2.3e10
		Identifier = { fg = p.subtext1 } + styles.identifiers, -- 任何变量名
		Function = { fg = p.blue } + styles.functions, -- 函数名（也包括类的方法）
		Statement = { fg = p.magenta }, -- 任何语句
		Conditional = { fg = p.magenta }, -- if，then，else，endif，switch 等
		Repeat = { fg = p.magenta }, -- for，do，while 等
		Label = { fg = p.red }, -- case，default 等
		Operator = { fg = p.subtext3 }, -- "sizeof"，"+"，"*" 等
		Keyword = { fg = p.purple } + styles.keywords, -- 任何其他关键字
		Exception = { fg = p.red }, -- try，catch，throw
		PreProc = { fg = p.yellow }, -- 通用预处理器
		Include = { fg = p.purple }, -- 预处理器 #include
		Define = { fg = p.purple }, -- 预处理器 #define
		Macro = { fg = p.purple }, -- 与 Define 相同
		PreCondit = { fg = p.yellow }, -- 预处理器 #if，#else，#endif 等
		Type = { fg = p.yellow }, -- int，long，char 等
		StorageClass = { fg = p.orange }, -- static，register，volatile 等
		Structure = { fg = p.yellow }, -- struct，union，enum 等
		Typedef = { fg = p.yellow }, -- typedef 定义
		Special = { fg = p.bright_red }, -- 任何特殊符号
		SpecialChar = { fg = p.bright_red }, -- 常量中的特殊字符
		Tag = { fg = p.bright_green }, -- 可以使用 CTRL-] 的标签
		Delimiter = { fg = p.subtext3 }, -- 需要特别注意的字符
		SpecialComment = { fg = p.gray4 }, -- 注释中的特殊内容
		Debug = { fg = p.bright_red }, -- 调试语句
		Underlined = { underline = true }, -- 需要突出的文本，HTML链接
		Error = { fg = p.red }, -- 任何错误结构
		Todo = { fg = p.yellow, bg = p.bg_dark }, -- 任何需要特别注意的内容；主要是 TODO FIXME 和 XXX 关键字
		-- HTML
		htmlArg = { fg = p.orange, italic = true }, -- 属性
		htmlEndTag = { fg = p.subtext3 }, -- 结束标签 />
		htmlTitle = { fg = p.fg }, -- 标题标签文本
		htmlTag = { fg = p.subtext3 }, -- 标签分隔符
		htmlTagN = { fg = p.magenta },
		htmlTagName = { fg = p.magenta }, -- 标签文本

		-- Diff 语法高亮组
		diffAdded = { fg = p.green },
		diffRemoved = { fg = p.red },
		diffChanged = { fg = p.yellow },
		diffOldFile = { fg = p.bg_dark },
		diffNewFile = { fg = p.fg },
		diffFile = { fg = p.cyan },
		diffLine = { fg = p.subtext4 },
		diffIndexLine = { fg = p.magenta },

		Directory = { fg = p.blue }, -- 目录名（以及列表中的其他特殊名称）
		Title = { fg = p.bright_magenta, bold = true }, -- 标题（如 :h 输出的标题，man 页面的标题等）
		WarningMsg = { fg = p.bright_yellow }, -- 警告消息
		MoreMsg = { fg = p.bright_green }, -- 更多提示（如命令行中的 -- More --）
		ModeMsg = { fg = p.fg, bold = true }, -- 当前模式显示（如 -- INSERT --）
		MatchParen = { fg = p.bright_cyan, bold = true }, -- 匹配的括号
		NonText = { fg = p.gray2 }, -- '~' 和 '@' 在行尾，以及其他在 'showbreak' 中使用的字符
		SpecialKey = { fg = p.gray3 }, -- 由 'listchars' 显示的文本
		Visual = { bg = p.gray1 }, -- 可视模式选择
		VisualNOS = { bg = p.gray1 }, -- 可视模式选择（无所有者）
		Search = { fg = p.bg_dark, bg = p.bright_yellow }, -- 最后搜索的模式
		IncSearch = { fg = p.bg_dark, bg = p.bright_orange }, -- 'incsearch' 高亮；也用于被替换的文本
		CursorLine = { bg = p.bg_dark }, -- 光标所在屏幕行的高亮
		CursorColumn = { bg = p.bg_dark }, -- 光标所在屏幕列的高亮
		ColorColumn = { bg = p.gray0 }, -- 用于 'colorcolumn' 设置的列
		LineNr = { fg = p.gray3 }, -- 行号
		CursorLineNr = { fg = p.bright_yellow }, -- 光标所在行的行号
		SignColumn = { fg = p.fg }, -- 显示 signs 的列
		Folded = { fg = p.gray4, bg = p.bg_dark }, -- 已折叠的行
		FoldColumn = { fg = p.gray3 }, -- 'foldcolumn'
	}
end
return M
