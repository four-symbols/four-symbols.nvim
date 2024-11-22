local M = {}
-- https://github.com/MeanderingProgrammer/render-markdown.nvim/blob/82184c4a3c3580a7a859b2cb7e58f16c10fd29ef/doc/render-markdown.txt#L1144
function M.get(p)
	return {
		RenderMarkdownCode = { bg = p.bg_02 },
		RenderMarkdownCodeInline = { bg = p.bg_02 },
	}
end

return M
