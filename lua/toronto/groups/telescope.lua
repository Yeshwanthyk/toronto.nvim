local M = {}

function M.get(colors, opts)
  return {
    -- Borders and backgrounds
    TelescopeBorder          = { fg = colors.border, bg = colors.bg_float },
    TelescopeNormal          = { fg = colors.fg, bg = colors.bg_float },

    -- Selection
    TelescopeSelection       = { fg = colors.fg, bg = colors.visual, bold = true },
    TelescopeSelectionCaret  = { fg = colors.method, bg = colors.visual },
    TelescopeMultiSelection  = { fg = colors.class },
    TelescopeMultiIcon       = { fg = colors.class },

    -- Matching
    TelescopeMatching        = { fg = colors.method, bold = true },

    -- Results
    TelescopeResultsNormal   = { fg = colors.fg, bg = colors.bg_float },
    TelescopeResultsTitle    = { fg = colors.bg, bg = colors.class, bold = true },
    TelescopeResultsComment  = { fg = colors.comment },
    TelescopeResultsDiffAdd  = { fg = colors.git.add },
    TelescopeResultsDiffChange = { fg = colors.git.change },
    TelescopeResultsDiffDelete = { fg = colors.git.delete },

    -- Preview
    TelescopePreviewNormal   = { fg = colors.fg, bg = colors.bg_float },
    TelescopePreviewTitle    = { fg = colors.bg, bg = colors.method, bold = true },
    TelescopePreviewBorder   = { fg = colors.border, bg = colors.bg_float },
    TelescopePreviewLine     = { bg = colors.cursorline },

    -- Prompt
    TelescopePromptNormal    = { fg = colors.fg, bg = colors.bg_float },
    TelescopePromptTitle     = { fg = colors.bg, bg = colors.string, bold = true },
    TelescopePromptBorder    = { fg = colors.string, bg = colors.bg_float },
    TelescopePromptPrefix    = { fg = colors.method },
    TelescopePromptCounter   = { fg = colors.comment },
  }
end

return M
