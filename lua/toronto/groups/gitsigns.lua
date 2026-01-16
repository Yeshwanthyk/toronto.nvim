local M = {}

function M.get(colors, opts)
  return {
    GitSignsAdd          = { fg = colors.git.add },
    GitSignsChange       = { fg = colors.git.change },
    GitSignsDelete       = { fg = colors.git.delete },
    GitSignsAddNr        = { fg = colors.git.add },
    GitSignsChangeNr     = { fg = colors.git.change },
    GitSignsDeleteNr     = { fg = colors.git.delete },
    GitSignsAddLn        = { bg = colors.ui_bg },
    GitSignsChangeLn     = { bg = colors.ui_bg },
    GitSignsDeleteLn     = { bg = colors.ui_bg },
    GitSignsCurrentLineBlame = { fg = colors.comment },
  }
end

return M
