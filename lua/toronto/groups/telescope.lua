local M = {}

function M.get(colors, opts)
  return {
    -- Telescope
    TelescopeBorder          = { fg = colors.border, bg = colors.ui_bg },
    TelescopeNormal          = { fg = colors.fg, bg = colors.ui_bg },
    TelescopeSelection       = { fg = colors.bg, bg = colors.method, bold = true },
    TelescopeSelectionCaret  = { fg = colors.bg, bg = colors.method },
    TelescopeMatching        = { fg = colors.number, bold = true },
    
    -- File paths and results
    TelescopeResultsNormal   = { fg = colors.fg, bg = colors.ui_bg },
    TelescopeResultsTitle    = { fg = colors.bg, bg = colors.method, bold = true },
    TelescopeResultsComment  = { fg = colors.dim },
    
    -- Preview window
    TelescopePreviewNormal   = { fg = colors.fg, bg = colors.ui_bg },
    TelescopePreviewTitle    = { fg = colors.bg, bg = colors.class, bold = true },
    TelescopePreviewLine     = { bg = colors.cursorline },
    
    -- Prompt
    TelescopePromptNormal    = { fg = colors.fg, bg = colors.ui_bg },
    TelescopePromptTitle     = { fg = colors.bg, bg = colors.string, bold = true },
    TelescopePromptPrefix    = { fg = colors.method },
    TelescopePromptCounter   = { fg = colors.dim },
  }
end

return M