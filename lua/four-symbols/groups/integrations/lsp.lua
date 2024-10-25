local M = {}

function M.get(p)
	return {
		-- LSP 语义令牌组（Semantic Token Groups）
		-- 布尔类型，如 true、false
		["@lsp.type.boolean"] = { link = "@boolean" },
		-- 内置类型，如 int、string 等
		["@lsp.type.builtinType"] = { link = "@type.builtin" },
		-- 注释
		["@lsp.type.comment"] = { link = "@comment" },
		-- 枚举类型
		["@lsp.type.enum"] = { link = "@type" },
		-- 枚举成员
		["@lsp.type.enumMember"] = { link = "@constant" },
		-- 转义序列，如 \n、\t 等
		["@lsp.type.escapeSequence"] = { link = "@string.escape" },
		-- 格式说明符，如 %d、%s 等
		["@lsp.type.formatSpecifier"] = { link = "@punctuation.special" },
		-- 接口类型
		["@lsp.type.interface"] = { fg = p.purple },
		-- 关键字，如 if、else、for 等
		["@lsp.type.keyword"] = { link = "@keyword" },
		-- 命名空间、包或模块
		["@lsp.type.namespace"] = { link = "@namespace" },
		-- 数字类型，如整数、浮点数
		["@lsp.type.number"] = { link = "@number" },
		-- 操作符，如 +、-、*、/
		["@lsp.type.operator"] = { link = "@operator" },
		-- 参数
		["@lsp.type.parameter"] = { link = "@parameter" },
		-- 属性或字段
		["@lsp.type.property"] = { link = "@property" },
		-- self 关键字，表示自身引用
		["@lsp.type.selfKeyword"] = { link = "@variable.builtin" },
		-- Rust 语言的字符串类型
		["@lsp.type.string.rust"] = { link = "@string" },
		-- 类型别名
		["@lsp.type.typeAlias"] = { link = "@type.definition" },
		-- 未解析的引用，通常表示引用了不存在的变量或函数
		["@lsp.type.unresolvedReference"] = { undercurl = true, sp = p.error },
		-- 只读修饰符
		["@lsp.mod.readonly"] = { link = "@constant" },
		-- 只读的函数
		["@lsp.typemod.function.readonly"] = { fg = p.water },
		-- 变量声明
		["@lsp.typemod.variable.declaration"] = { link = "@variable" },
		-- 默认库中的类
		["@lsp.typemod.class.defaultLibrary"] = { link = "@type.builtin" },
		-- 默认库中的枚举
		["@lsp.typemod.enum.defaultLibrary"] = { link = "@type.builtin" },
		-- 默认库中的枚举成员
		["@lsp.typemod.enumMember.defaultLibrary"] = { link = "@constant.builtin" },
		-- 默认库中的函数
		["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
		-- 异步关键字，如 async、await
		["@lsp.typemod.keyword.async"] = { link = "@keyword.coroutine" },
		-- 默认库中的宏
		["@lsp.typemod.macro.defaultLibrary"] = { link = "@function.builtin" },
		-- 默认库中的方法
		["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
		-- 注入代码中的操作符（如模板字符串中的表达式）
		["@lsp.typemod.operator.injected"] = { link = "@operator" },
		-- 注入代码中的字符串（如嵌入的 SQL 或正则表达式）
		["@lsp.typemod.string.injected"] = { link = "@string" },
		-- 默认库中的类型
		["@lsp.typemod.type.defaultLibrary"] = { fg = p.purple },
		-- 默认库中的变量
		["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
		-- 注入代码中的变量
		["@lsp.typemod.variable.injected"] = { link = "@variable" },

		-- Neovim 内置的语言服务器客户端（LSP）
		-- 高亮当前引用的写操作（如变量被赋值）
		LspReferenceWrite = { fg = p.purple, underline = false },
		-- 高亮当前引用的文本
		LspReferenceText = { fg = p.purple, underline = false, bold = true },
		-- 高亮当前引用的读操作（如变量被读取）
		LspReferenceRead = { fg = p.purple, underline = false, bold = true },
		-- LSP 签名中的活动参数（在函数调用时高亮当前参数）
		LspSignatureActiveParameter = { fg = p.metal, bold = true },

		-- 诊断信息（Diagnostics）
		-- 表示正常状态或成功
		DiagnosticOk = { fg = p.wood },
		-- 错误信息
		DiagnosticError = { fg = p.red },
		-- 警告信息
		DiagnosticWarn = { fg = p.metal },
		-- 提示信息
		DiagnosticInfo = { fg = p.purple },
		-- 建议信息
		DiagnosticHint = { fg = p.cyan },
		-- 错误下划线
		DiagnosticUnderlineError = { fg = p.red, underline = true },
		-- 警告下划线
		DiagnosticUnderlineWarn = { fg = p.metal, underline = true },
		-- 信息下划线
		DiagnosticUnderlineInfo = { fg = p.purple, underline = true },
		-- 提示下划线
		DiagnosticUnderlineHint = { fg = p.cyan, underline = true },
	}
end

return M
