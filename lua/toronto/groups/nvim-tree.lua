local M = {}

function M.get(colors, opts)
  return {
    -- NvimTree
    NvimTreeNormal     = { fg = colors.fg, bg = colors.bg_sidebar },
    NvimTreeFolderName = { fg = colors.fg },
    NvimTreeRootFolder = { fg = colors.keyword, bold = true },
    NvimTreeOpenedFile = { fg = colors.method, bold = true },
  }
end

return M