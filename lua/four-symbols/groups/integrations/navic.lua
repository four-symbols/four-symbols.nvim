local M = {}

function M.get(p)
	return {
		NavicIconsFile = { fg = p.fg_01, bg = p.none },
		NavicIconsModule = { fg = p.yellow, bg = p.none },
		NavicIconsNamespace = { fg = p.fg_01, bg = p.none },
		NavicIconsPackage = { fg = p.fg_01, bg = p.none },
		NavicIconsClass = { fg = p.red, bg = p.none },
		NavicIconsMethod = { fg = p.purple, bg = p.none },
		NavicIconsProperty = { fg = p.green, bg = p.none },
		NavicIconsField = { fg = p.green, bg = p.none },
		NavicIconsConstructor = { fg = p.red, bg = p.none },
		NavicIconsEnum = { fg = p.red, bg = p.none },
		NavicIconsInterface = { fg = p.red, bg = p.none },
		NavicIconsFunction = { fg = p.purple, bg = p.none },
		NavicIconsVariable = { fg = p.magenta, bg = p.none },
		NavicIconsConstant = { fg = p.magenta, bg = p.none },
		NavicIconsString = { fg = p.green, bg = p.none },
		NavicIconsNumber = { fg = p.red, bg = p.none },
		NavicIconsBoolean = { fg = p.yellow, bg = p.none },
		NavicIconsArray = { fg = p.fg_03, bg = p.none },
		NavicIconsObject = { fg = p.fg_03, bg = p.none },
		NavicIconsKey = { fg = p.purple, bg = p.none },
		NavicIconsKeyword = { fg = p.purple, bg = p.none },
		NavicIconsNull = { fg = p.red, bg = p.none },
		NavicIconsEnumMember = { fg = p.green, bg = p.none },
		NavicIconsStruct = { fg = p.red, bg = p.none },
		NavicIconsEvent = { fg = p.red, bg = p.none },
		NavicIconsOperator = { fg = p.fg_01, bg = p.none },
		NavicIconsTypeParameter = { fg = p.green, bg = p.none },
		NavicText = { fg = p.fg_01, bg = p.none },
		NavicSeparator = { fg = p.fg_03, bg = p.none },
	}
end

return M
