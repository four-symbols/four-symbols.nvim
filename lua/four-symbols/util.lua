local M = {}

function M.extend(opts) return opts and vim.tbl_deep_extend("force", {}, M.options, opts) or M.options end

return M
