local M = {}

function M.get(colors, opts)
  return {
    NoiceCmdlineIconInput          = { fg = colors.yellow },
    NoiceCmdlineIconLua            = { fg = colors.number },
    NoiceCmdlinePopupBorderInput   = { fg = colors.yellow },
    NoiceCmdlinePopupBorderLua     = { fg = colors.number },
    NoiceCmdlinePopupTitleInput    = { fg = colors.yellow },
    NoiceCmdlinePopupTitleLua      = { fg = colors.number },
    NoiceCompletionItemKindDefault = { fg = colors.variable, bg = colors.none },
    
    -- Same kind highlights as cmp
    NoiceCompletionItemKindText          = { fg = colors.fg },
    NoiceCompletionItemKindMethod        = { fg = colors.method },
    NoiceCompletionItemKindFunction      = { fg = colors.class },
    NoiceCompletionItemKindConstructor   = { fg = colors.class },
    NoiceCompletionItemKindField         = { fg = colors.class },
    NoiceCompletionItemKindVariable      = { fg = colors.variable },
    NoiceCompletionItemKindClass         = { fg = colors.class },
    NoiceCompletionItemKindInterface     = { fg = colors.class },
    NoiceCompletionItemKindModule        = { fg = colors.class },
    NoiceCompletionItemKindProperty      = { fg = colors.class },
    NoiceCompletionItemKindUnit          = { fg = colors.number },
    NoiceCompletionItemKindValue         = { fg = colors.string },
    NoiceCompletionItemKindEnum          = { fg = colors.class },
    NoiceCompletionItemKindKeyword       = { fg = colors.keyword },
    NoiceCompletionItemKindSnippet       = { fg = colors.string },
    NoiceCompletionItemKindColor         = { fg = colors.red },
    NoiceCompletionItemKindFile          = { fg = colors.fg },
    NoiceCompletionItemKindReference     = { fg = colors.number },
    NoiceCompletionItemKindFolder        = { fg = colors.method },
    NoiceCompletionItemKindEnumMember    = { fg = colors.class },
    NoiceCompletionItemKindConstant      = { fg = colors.fg },
    NoiceCompletionItemKindStruct        = { fg = colors.class },
    NoiceCompletionItemKindEvent         = { fg = colors.yellow },
    NoiceCompletionItemKindOperator      = { fg = colors.fg },
    NoiceCompletionItemKindTypeParameter = { fg = colors.type_builtin },
  }
end

return M