local hslutil = require "four-symbols.hsl"
local hsl = hslutil.hslToHex

return {
	bg_01 = hsl(203, 16, 10),
	bg_02 = hsl(207, 13, 13),
	bg_03 = hsl(205, 14, 16),
	bg_04 = hsl(208, 13, 19),
	bg_05 = hsl(208, 13, 23),
	fg_01 = hsl(162, 23, 49),
	fg_02 = hsl(158, 25, 54),
	fg_03 = hsl(162, 33, 62),
	fg_04 = hsl(167, 40, 69),
	fg_05 = hsl(163, 53, 77),
	yellow = hsl(46, 69, 68),
	green = hsl(70, 73, 40),
	blue = hsl(203, 92, 75),
	orange = hsl(17, 100, 74),
	brown = hsl(38, 22, 30),
	white = hsl(0, 0, 100),
	black = hsl(180, 44, 7),
	red = hsl(0, 45, 63),
	purple = hsl(300, 47, 75),
	magenta = hsl(326, 58, 61),
	cyan = hsl(180, 100, 94),
	gray = hsl(92, 5, 53),
	none = "NONE",
}
