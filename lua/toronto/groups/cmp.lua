local M = {}

function M.get(colors, opts)
  return {
    CmpDocumentation       = { fg = colors.fg, bg = colors.bg_float },
    CmpDocumentationBorder = { fg = colors.border_highlight, bg = colors.bg_float },
    CmpGhostText           = { fg = colors.border },
    CmpItemAbbr            = { fg = colors.fg, bg = colors.none },
    CmpItemAbbrDeprecated  = { fg = colors.dim, bg = colors.none, strikethrough = true },
    CmpItemAbbrMatch       = { fg = colors.method, bg = colors.none },
    CmpItemAbbrMatchFuzzy  = { fg = colors.method, bg = colors.none },
    CmpItemKindCodeium     = { fg = colors.cyan, bg = colors.none },
    CmpItemKindCopilot     = { fg = colors.cyan, bg = colors.none },
    CmpItemKindSupermaven  = { fg = colors.cyan, bg = colors.none },
    CmpItemKindDefault     = { fg = colors.variable, bg = colors.none },
    CmpItemKindTabNine     = { fg = colors.cyan, bg = colors.none },
    CmpItemMenu            = { fg = colors.comment, bg = colors.none },
    
    -- Kind highlights for different completion types
    CmpItemKindText          = { fg = colors.fg },
    CmpItemKindMethod        = { fg = colors.method },
    CmpItemKindFunction      = { fg = colors.class },
    CmpItemKindConstructor   = { fg = colors.class },
    CmpItemKindField         = { fg = colors.class },
    CmpItemKindVariable      = { fg = colors.variable },
    CmpItemKindClass         = { fg = colors.class },
    CmpItemKindInterface     = { fg = colors.class },
    CmpItemKindModule        = { fg = colors.class },
    CmpItemKindProperty      = { fg = colors.class },
    CmpItemKindUnit          = { fg = colors.number },
    CmpItemKindValue         = { fg = colors.string },
    CmpItemKindEnum          = { fg = colors.class },
    CmpItemKindKeyword       = { fg = colors.keyword },
    CmpItemKindSnippet       = { fg = colors.string },
    CmpItemKindColor         = { fg = colors.red },
    CmpItemKindFile          = { fg = colors.fg },
    CmpItemKindReference     = { fg = colors.number },
    CmpItemKindFolder        = { fg = colors.method },
    CmpItemKindEnumMember    = { fg = colors.class },
    CmpItemKindConstant      = { fg = colors.fg },
    CmpItemKindStruct        = { fg = colors.class },
    CmpItemKindEvent         = { fg = colors.yellow },
    CmpItemKindOperator      = { fg = colors.fg },
    CmpItemKindTypeParameter = { fg = colors.type_builtin },
  }
end

return M