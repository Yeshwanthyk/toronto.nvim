local M = {}

function M.get(colors, opts)
  return {
    CmpDocumentation       = { fg = colors.fg, bg = colors.bg_float },
    CmpDocumentationBorder = { fg = colors.border_highlight, bg = colors.bg_float },
    CmpGhostText           = { fg = colors.comment },
    CmpItemAbbr            = { fg = colors.fg, bg = colors.none },
    CmpItemAbbrDeprecated  = { fg = colors.comment, bg = colors.none, strikethrough = true },
    CmpItemAbbrMatch       = { fg = colors.method, bg = colors.none, bold = true },
    CmpItemAbbrMatchFuzzy  = { fg = colors.method, bg = colors.none },
    CmpItemMenu            = { fg = colors.comment, bg = colors.none },

    -- AI completion sources
    CmpItemKindCodeium     = { fg = colors.cyan, bg = colors.none },
    CmpItemKindCopilot     = { fg = colors.cyan, bg = colors.none },
    CmpItemKindSupermaven  = { fg = colors.cyan, bg = colors.none },
    CmpItemKindTabNine     = { fg = colors.cyan, bg = colors.none },
    CmpItemKindDefault     = { fg = colors.dim, bg = colors.none },

    -- Kind highlights (semantic colors)
    CmpItemKindText          = { fg = colors.fg },
    CmpItemKindMethod        = { fg = colors.method },
    CmpItemKindFunction      = { fg = colors.method },
    CmpItemKindConstructor   = { fg = colors.class },
    CmpItemKindField         = { fg = colors.type_builtin },
    CmpItemKindVariable      = { fg = colors.variable },
    CmpItemKindClass         = { fg = colors.class },
    CmpItemKindInterface     = { fg = colors.class },
    CmpItemKindModule        = { fg = colors.dim },
    CmpItemKindProperty      = { fg = colors.type_builtin },
    CmpItemKindUnit          = { fg = colors.number },
    CmpItemKindValue         = { fg = colors.string },
    CmpItemKindEnum          = { fg = colors.class },
    CmpItemKindKeyword       = { fg = colors.keyword },
    CmpItemKindSnippet       = { fg = colors.decorator },
    CmpItemKindColor         = { fg = colors.string },
    CmpItemKindFile          = { fg = colors.fg },
    CmpItemKindReference     = { fg = colors.type_builtin },
    CmpItemKindFolder        = { fg = colors.method },
    CmpItemKindEnumMember    = { fg = colors.number },
    CmpItemKindConstant      = { fg = colors.number },
    CmpItemKindStruct        = { fg = colors.class },
    CmpItemKindEvent         = { fg = colors.yellow },
    CmpItemKindOperator      = { fg = colors.fg },
    CmpItemKindTypeParameter = { fg = colors.type_builtin },
  }
end

return M
