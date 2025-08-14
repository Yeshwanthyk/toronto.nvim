local M = {}

function M.get(colors, opts)
  return {
    FlashBackdrop = { fg = colors.dim },
    FlashLabel    = { bg = colors.string, bold = true, fg = colors.bg },
  }
end

return M