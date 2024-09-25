local M = {}

function M.get(p, opts)
	local styles = vim.tbl_map(function(value)
		return setmetatable(value, {
			__add = function(a, b) return vim.tbl_extend("force", a, b) end,
		})
	end, opts.styles)

	return {
		-- 布尔值，如 true、false
		["@boolean"] = { fg = p.orange } + styles.booleans,
		-- 构造函数，类的构造方法或函数
		["@constructor"] = { fg = p.subtext1 },
		-- 内建常量，如 nil、true、false 等
		["@constant.builtin"] = { fg = p.yellow },
		-- 函数定义关键字，如 function、def 等
		["@keyword.function"] = { fg = p.purple } + styles.functions,
		-- 命名空间，模块或包名
		["@namespace"] = { fg = p.red, italic = true },
		-- 函数或方法的参数
		["@parameter"] = { fg = p.magenta },
		-- 属性或字段
		["@property"] = { fg = p.fg },
		-- 标点符号
		["@punctuation"] = { fg = p.subtext1 },
		-- 分隔符，如逗号、分号
		["@punctuation.delimiter"] = { fg = p.subtext1 },
		-- 括号，包括圆括号、方括号和花括号
		["@punctuation.bracket"] = { fg = p.subtext1 },
		-- 特殊的标点符号
		["@punctuation.special"] = { fg = p.subtext1 },
		-- 文档字符串，通常用于注释
		["@string.documentation"] = { fg = p.green } + styles.comments,
		-- 正则表达式字符串
		["@string.regex"] = { fg = p.purple },
		-- 字符串中的转义字符
		["@string.escape"] = { fg = p.magenta },
		-- 符号类型，特定语言中的符号
		["@symbol"] = { fg = p.yellow },
		-- 标签，如 HTML 标签
		["@tag"] = { fg = p.red },
		-- 标签的属性名
		["@tag.attribute"] = { fg = p.cyan, italic = true },
		-- 标签的分隔符，如 <、>、</
		["@tag.delimiter"] = { fg = p.subtext1 },
		-- 内建类型，如 int、string 等
		["@type.builtin"] = { fg = p.magenta },
		-- 变量
		["@variable"] = { fg = p.fg } + styles.variables,
		-- 内建变量，如 self、this 等
		["@variable.builtin"] = { fg = p.purple } + styles.variables,
		-- 参数变量
		["@variable.parameter"] = { fg = p.magenta } + styles.variables,
		-- JavaScript 中的构造函数
		["@constructor.javascript"] = { fg = p.red },
		-- Clojure 语言的关键字
		["@keyword.clojure"] = { fg = p.bright_red } + styles.keywords,
		-- 下划线文本
		["@text.underline"] = { link = "Underlined" },
		-- 加粗文本
		["@text.strong"] = { bold = true },
		-- 删除线文本
		["@text.strikethrough"] = { strikethrough = true },
		-- 斜体文本
		["@text.italic"] = { italic = true },
		-- 标题通用样式
		["@markup.heading"] = { fg = p.fg, bold = true },
		-- 一级标题
		["@markup.heading.1"] = { fg = p.blue, bold = true },
		-- 一级标题的标记（如 '#'）
		["@markup.heading.1.marker"] = { link = "@comment" },
		-- 二级标题
		["@markup.heading.2"] = { fg = p.blue, bold = true },
		-- 二级标题的标记
		["@markup.heading.2.marker"] = { link = "@comment" },
		-- 三级标题
		["@markup.heading.3"] = { fg = p.blue, bold = true },
		-- 三级标题的标记
		["@markup.heading.3.marker"] = { link = "@comment" },
		-- 四级标题
		["@markup.heading.4"] = { fg = p.blue, bold = true },
		-- 四级标题的标记
		["@markup.heading.4.marker"] = { link = "@comment" },
		-- 五级标题
		["@markup.heading.5"] = { fg = p.blue, bold = true },
		-- 五级标题的标记
		["@markup.heading.5.marker"] = { link = "@comment" },
		-- 六级标题
		["@markup.heading.6"] = { fg = p.blue, bold = true },
		-- 六级标题的标记
		["@markup.heading.6.marker"] = { link = "@comment" },
		-- 链接文本
		["@markup.link"] = { fg = p.subtext1 },
		-- 链接的标签
		["@markup.link.label"] = { fg = p.red },
		-- 链接的 URL
		["@markup.link.url"] = { fg = p.purple },
		-- 列表项
		["@markup.list"] = { fg = p.subtext4, bold = true },
		-- 已完成的列表项
		["@markup.list.checked"] = { fg = p.subtext4 },
		-- 未完成的列表项
		["@markup.list.unchecked"] = { fg = p.subtext4 },
		-- 原始块（如代码块）
		["@markup.raw.block"] = { fg = p.subtext4 },
		-- 原始块的分隔符（如 ```）
		["@markup.raw.delimiter"] = { fg = p.subtext4 },
		-- 引用文本
		["@markup.quote"] = { fg = p.subtext1 },
		-- Markdown 中已完成的列表项
		["@markup.list.checked.markdown"] = { fg = p.green },
		-- 下划线文本（链接到 "@text.underline"）
		["@markup.underline"] = { link = "@text.underline" },
		-- 加粗文本（链接到 "@text.strong"）
		["@markup.strong"] = { link = "@text.strong" },
		-- 斜体文本（链接到 "@text.italic"）
		["@markup.italic"] = { link = "@text.italic" },
		-- 删除线文本（链接到 "@text.strikethrough"）
		["@markup.strikethrough"] = { link = "@text.strikethrough" },
	}
end

return M
