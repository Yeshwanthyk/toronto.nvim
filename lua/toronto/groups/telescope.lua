local M = {}

function M.get(colors, opts)
  return {
    -- Telescope
    TelescopeBorder       = { fg = colors.border, bg = colors.ui_bg },
    TelescopeNormal       = { fg = colors.fg, bg = colors.ui_bg },
    TelescopeSelection    = { fg = colors.bg, bg = colors.method, bold = true },
    TelescopeSelectionCaret = { fg = colors.bg, bg = colors.method },
    TelescopeMatching     = { fg = colors.number, bold = true },
  }
end

return M