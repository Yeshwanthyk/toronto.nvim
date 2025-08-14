local M = {}

function M.get(colors, opts)
  return {
    -- Basic syntax
    Comment      = { fg = colors.comment, italic = opts.styles.comments.italic },
    String       = { fg = colors.string },
    Character    = { fg = colors.string },
    Number       = { fg = colors.class },
    Float        = { fg = colors.class },
    Boolean      = { fg = colors.fg, bold = true },
    Constant     = { fg = colors.fg },
    Identifier   = { fg = colors.variable },
    Function     = { fg = colors.class, bold = opts.styles.functions.bold },

    Statement    = { fg = colors.keyword, bold = opts.styles.keywords.bold },
    Conditional  = { fg = colors.keyword, bold = opts.styles.keywords.bold },
    Repeat       = { fg = colors.keyword, bold = opts.styles.keywords.bold },
    Label        = { fg = colors.keyword },
    Operator     = { fg = colors.fg },
    Keyword      = { fg = colors.keyword, bold = opts.styles.keywords.bold },
    Exception    = { fg = colors.keyword },

    PreProc      = { fg = colors.fg },
    Define       = { fg = colors.fg },
    Include      = { fg = colors.fg, bold = true },
    Macro        = { fg = colors.decorator },
    PreCondit    = { fg = colors.decorator },

    Type         = { fg = colors.class, bold = true },
    StorageClass = { fg = colors.fg },
    Structure    = { fg = colors.class, bold = true },
    Typedef      = { fg = colors.fg },

    Special      = { fg = colors.class },
    SpecialChar  = { fg = colors.class },
    Tag          = { fg = colors.keyword },
    Delimiter    = { fg = colors.fg },
    SpecialComment = { fg = colors.comment, italic = true },
    Debug        = { fg = colors.red },
  }
end

return M