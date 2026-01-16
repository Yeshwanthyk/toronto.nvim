local M = {}

function M.get(colors, opts)
  return {
    -- Cmdline
    NoiceCmdlineIconInput          = { fg = colors.yellow },
    NoiceCmdlineIconLua            = { fg = colors.number },
    NoiceCmdlineIconSearch         = { fg = colors.method },
    NoiceCmdlinePopupBorder        = { fg = colors.border },
    NoiceCmdlinePopupBorderInput   = { fg = colors.yellow },
    NoiceCmdlinePopupBorderLua     = { fg = colors.number },
    NoiceCmdlinePopupBorderSearch  = { fg = colors.method },
    NoiceCmdlinePopupTitleInput    = { fg = colors.yellow },
    NoiceCmdlinePopupTitleLua      = { fg = colors.number },

    -- Completion kinds (same semantic mapping as cmp)
    NoiceCompletionItemKindDefault = { fg = colors.dim, bg = colors.none },
    NoiceCompletionItemKindText          = { fg = colors.fg },
    NoiceCompletionItemKindMethod        = { fg = colors.method },
    NoiceCompletionItemKindFunction      = { fg = colors.method },
    NoiceCompletionItemKindConstructor   = { fg = colors.class },
    NoiceCompletionItemKindField         = { fg = colors.type_builtin },
    NoiceCompletionItemKindVariable      = { fg = colors.variable },
    NoiceCompletionItemKindClass         = { fg = colors.class },
    NoiceCompletionItemKindInterface     = { fg = colors.class },
    NoiceCompletionItemKindModule        = { fg = colors.dim },
    NoiceCompletionItemKindProperty      = { fg = colors.type_builtin },
    NoiceCompletionItemKindUnit          = { fg = colors.number },
    NoiceCompletionItemKindValue         = { fg = colors.string },
    NoiceCompletionItemKindEnum          = { fg = colors.class },
    NoiceCompletionItemKindKeyword       = { fg = colors.keyword },
    NoiceCompletionItemKindSnippet       = { fg = colors.decorator },
    NoiceCompletionItemKindColor         = { fg = colors.string },
    NoiceCompletionItemKindFile          = { fg = colors.fg },
    NoiceCompletionItemKindReference     = { fg = colors.type_builtin },
    NoiceCompletionItemKindFolder        = { fg = colors.method },
    NoiceCompletionItemKindEnumMember    = { fg = colors.number },
    NoiceCompletionItemKindConstant      = { fg = colors.number },
    NoiceCompletionItemKindStruct        = { fg = colors.class },
    NoiceCompletionItemKindEvent         = { fg = colors.yellow },
    NoiceCompletionItemKindOperator      = { fg = colors.fg },
    NoiceCompletionItemKindTypeParameter = { fg = colors.type_builtin },

    -- Messages
    NoiceFormatProgressDone  = { fg = colors.class },
    NoiceFormatProgressTodo  = { fg = colors.border },
  }
end

return M
