local M = {}

function M.get(colors, opts)
  return {
    -- Gitsigns
    GitSignsAdd    = { fg = colors.git.add },
    GitSignsChange = { fg = colors.git.change },
    GitSignsDelete = { fg = colors.git.delete },
  }
end

return M