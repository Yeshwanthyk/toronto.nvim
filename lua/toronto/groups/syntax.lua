local M = {}

function M.get(colors, opts)
  return {
    -- ═══════════════════════════════════════════════════════════════════
    -- BASIC SYNTAX (fallback for non-treesitter)
    -- ═══════════════════════════════════════════════════════════════════
    Comment      = { fg = colors.comment, italic = opts.styles.comments.italic },

    -- Literals (warm spectrum)
    String       = { fg = colors.string },
    Character    = { fg = colors.string },
    Number       = { fg = colors.number },
    Float        = { fg = colors.number },
    Boolean      = { fg = colors.number, bold = true },

    -- Identifiers
    Constant     = { fg = colors.fg },
    Identifier   = { fg = colors.variable },
    Function     = { fg = colors.method, bold = opts.styles.functions.bold },

    -- Keywords (steel structure)
    Statement    = { fg = colors.keyword, bold = opts.styles.keywords.bold },
    Conditional  = { fg = colors.keyword, bold = opts.styles.keywords.bold },
    Repeat       = { fg = colors.keyword, bold = opts.styles.keywords.bold },
    Label        = { fg = colors.keyword },
    Operator     = { fg = colors.fg },
    Keyword      = { fg = colors.keyword, bold = opts.styles.keywords.bold },
    Exception    = { fg = colors.keyword, bold = opts.styles.keywords.bold },

    -- Preprocessor
    PreProc      = { fg = colors.decorator },
    Define       = { fg = colors.decorator },
    Include      = { fg = colors.keyword },
    Macro        = { fg = colors.decorator },
    PreCondit    = { fg = colors.decorator },

    -- Types (lake teal)
    Type         = { fg = colors.class, bold = true },
    StorageClass = { fg = colors.keyword },
    Structure    = { fg = colors.class, bold = true },
    Typedef      = { fg = colors.class },

    -- Special
    Special      = { fg = colors.decorator },
    SpecialChar  = { fg = colors.yellow, bold = true },
    Tag          = { fg = colors.class },
    Delimiter    = { fg = colors.dim },
    SpecialComment = { fg = colors.comment, bold = true },
    Debug        = { fg = colors.red },

    -- Underlined
    Underlined   = { underline = true },

    -- Ignore
    Ignore       = { fg = colors.comment },

    -- Error
    Error        = { fg = colors.red, bold = true },
  }
end

return M
