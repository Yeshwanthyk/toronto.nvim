local M = {}

function M.get(colors, opts)
  return {
    WhichKey          = { fg = colors.cyan },
    WhichKeyGroup     = { fg = colors.method },
    WhichKeyDesc      = { fg = colors.string },
    WhichKeySeparator = { fg = colors.comment },
    WhichKeyNormal    = { bg = colors.bg_sidebar },
    WhichKeyValue     = { fg = colors.dim },
  }
end

return M