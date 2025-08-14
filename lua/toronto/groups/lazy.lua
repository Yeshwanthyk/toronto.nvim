local M = {}

function M.get(colors, opts)
  return {
    LazyProgressDone = { bold = true, fg = colors.string },
    LazyProgressTodo = { bold = true, fg = colors.dim },
  }
end

return M