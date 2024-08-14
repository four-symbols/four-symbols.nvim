local M = {}

function M.get(p, opts)
	-- 将 config.styles 表中的每个值应用一个函数，并返回新的表 styles。在应用的函数中，每个值都会被设置元表，使其支持 __add 元方法，该方法定义了表相加时的行为。
	-- 元表允许改变或扩展表的行为。在这里，元表的 __add 元方法定义了两个表相加(使用 + 运算符) 时的行为
	local styles = vim.tbl_map(function(value)
		return setmetatable(value, {
			__add = function(a, b) return vim.tbl_extend("force", a, b) end,
		})
	end, opts.styles)

	-- vim.notify(vim.inspect(styles), vim.log.levels.INFO)

	return {
		Comment = { fg = p.subtext4 } + styles.comments, -- any comment
		Constant = { fg = p.red }, -- any constant
		String = { fg = p.green }, -- a string constant: "this is a string"
		Character = { fg = p.green }, -- a character constant: 'p', '\n'
		Number = { fg = p.magenta }, -- a number constant: 234, 0xff
		Boolean = { fg = p.yellow } + styles.booleans, -- a boolean constant: TRUE, false
		Float = { fg = p.magenta }, -- a floating point constant: 2.3e10
		Identifier = { fg = p.fg } + styles.identifiers, -- any variable name
		Function = { fg = p.fg } + styles.functions, -- function name (also: methods for classes)
		Statement = { fg = p.fg }, -- any statement
		Conditional = { fg = p.blue }, -- if, then, else, endif, switch, etc.
		Repeat = { fg = p.purple }, -- for, do, while, etc.
		Label = { fg = p.purple }, -- case, default, etc.
		Operator = { fg = p.yellow }, -- sizeof", "+", "*", etc.
		Keyword = { fg = p.purple } + styles.keywords, -- any other keyword
		Exception = { fg = p.purple }, -- try, catch, throw
		PreProc = { fg = p.red }, -- generic Preprocessor
		Include = { fg = p.purple }, -- preprocessor #include
		Define = { fg = p.red }, -- preprocessor #define
		Macro = { fg = p.red }, -- same as Define
		PreCondit = { fg = p.red }, -- preprocessor #if, #else, #endif, etc.
		Type = { fg = p.yellow }, -- int, long, char, etc.
		StorageClass = { fg = p.yellow }, -- static, register, volatile, etc.
		Structure = { fg = p.red }, -- struct, union, enum, etc.
		Typedef = { fg = p.yellow }, -- A typedef
		Special = { fg = p.blue }, -- any special symbol
		SpecialChar = { fg = p.yellow }, -- special character in a constant
		Tag = { fg = p.yellow }, -- you can use CTRL-] on this
		SpecialComment = { fg = p.subtext4 }, -- special things inside a comment
		Debug = { fg = p.yellow }, -- debugging statements
		Underlined = { underline = true }, -- text that stands out, HTML links
		Error = { fg = p.orange }, -- any erroneous construct
		Todo = { fg = p.yellow }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		-- HTML
		htmlArg = { fg = p.fg, italic = true }, -- attributes
		htmlEndTag = { fg = p.subtext1 }, -- end tag />
		htmlTitle = { fg = p.fg }, -- title tag text
		htmlTag = { fg = p.subtext1 }, -- tag delimiters
		htmlTagN = { fg = p.subtext1 },
		htmlTagName = { fg = p.red }, -- tag text

		-- Diff
		diffAdded = { fg = p.green },
		diffRemoved = { fg = p.red },
		diffChanged = { fg = p.yellow },
		diffOldFile = { fg = p.gray4 },
		diffNewFile = { fg = p.fg },
		diffFile = { fg = p.subtext4 },
		diffLine = { fg = p.red },
		diffIndexLine = { fg = p.magenta },
	}
end

return M
