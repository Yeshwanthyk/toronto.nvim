local M = {}

function M.get(colors, opts)
  return {
    -- ═══════════════════════════════════════════════════════════════════
    -- VARIABLES (neutral zone)
    -- ═══════════════════════════════════════════════════════════════════
    ["@variable"]            = { fg = colors.variable },
    ["@variable.builtin"]    = { fg = colors.variable, italic = true },
    ["@variable.parameter"]  = { fg = colors.dim },           -- softer than vars
    ["@variable.member"]     = { fg = colors.type_builtin },  -- ties to types

    ["@field"]               = { fg = colors.type_builtin },
    ["@property"]            = { fg = colors.type_builtin },

    -- ═══════════════════════════════════════════════════════════════════
    -- CONSTANTS (warm beacons)
    -- ═══════════════════════════════════════════════════════════════════
    ["@constant"]            = { fg = colors.fg },
    ["@constant.builtin"]    = { fg = colors.number, bold = true },  -- None, True, etc
    ["@constant.macro"]      = { fg = colors.decorator },

    -- ═══════════════════════════════════════════════════════════════════
    -- LITERALS (warm spectrum - data)
    -- ═══════════════════════════════════════════════════════════════════
    ["@string"]              = { fg = colors.string },
    ["@string.regex"]        = { fg = colors.string, italic = true },
    ["@string.escape"]       = { fg = colors.yellow, bold = true },
    ["@string.special"]      = { fg = colors.decorator },
    ["@character"]           = { fg = colors.string },
    ["@number"]              = { fg = colors.number },
    ["@number.float"]        = { fg = colors.number },
    ["@boolean"]             = { fg = colors.number, bold = true },
    ["@float"]               = { fg = colors.number },

    -- ═══════════════════════════════════════════════════════════════════
    -- FUNCTIONS (amber streetlights - the "dusk moment")
    -- ═══════════════════════════════════════════════════════════════════
    ["@function"]            = { fg = colors.method, bold = opts.styles.functions.bold },
    ["@function.builtin"]    = { fg = colors.method, bold = opts.styles.functions.bold },
    ["@function.call"]       = { fg = colors.method },
    ["@function.macro"]      = { fg = colors.decorator },
    ["@function.method"]     = { fg = colors.method, bold = opts.styles.functions.bold },
    ["@method"]              = { fg = colors.method, bold = opts.styles.functions.bold },
    ["@method.call"]         = { fg = colors.method },
    ["@constructor"]         = { fg = colors.class, bold = true },  -- ties to types
    ["@parameter"]           = { fg = colors.dim },

    -- ═══════════════════════════════════════════════════════════════════
    -- KEYWORDS (steel structure)
    -- ═══════════════════════════════════════════════════════════════════
    ["@keyword"]             = { fg = colors.keyword, bold = opts.styles.keywords.bold },
    ["@keyword.function"]    = { fg = colors.keyword, bold = opts.styles.keywords.bold },
    ["@keyword.operator"]    = { fg = colors.keyword },
    ["@keyword.return"]      = { fg = colors.keyword, bold = true },
    ["@keyword.import"]      = { fg = colors.keyword },
    ["@keyword.export"]      = { fg = colors.keyword },
    ["@keyword.conditional"] = { fg = colors.keyword, bold = opts.styles.keywords.bold },
    ["@keyword.repeat"]      = { fg = colors.keyword, bold = opts.styles.keywords.bold },
    ["@keyword.exception"]   = { fg = colors.keyword, bold = opts.styles.keywords.bold },

    -- ═══════════════════════════════════════════════════════════════════
    -- TYPES (lake teal - Toronto signature)
    -- ═══════════════════════════════════════════════════════════════════
    ["@type"]                = { fg = colors.class, bold = true },
    ["@type.builtin"]        = { fg = colors.type_builtin },
    ["@type.definition"]     = { fg = colors.class, bold = true },
    ["@type.qualifier"]      = { fg = colors.keyword },

    ["@namespace"]           = { fg = colors.dim },
    ["@module"]              = { fg = colors.dim },
    ["@symbol"]              = { fg = colors.string },

    -- ═══════════════════════════════════════════════════════════════════
    -- PUNCTUATION (recede into background)
    -- ═══════════════════════════════════════════════════════════════════
    ["@punctuation"]           = { fg = colors.dim },
    ["@punctuation.bracket"]   = { fg = colors.dim },
    ["@punctuation.delimiter"] = { fg = colors.dim },
    ["@punctuation.special"]   = { fg = colors.decorator },

    -- ═══════════════════════════════════════════════════════════════════
    -- SPECIAL (rose accents)
    -- ═══════════════════════════════════════════════════════════════════
    ["@attribute"]           = { fg = colors.decorator },
    ["@attribute.builtin"]   = { fg = colors.decorator },
    ["@decorator"]           = { fg = colors.decorator },

    ["@tag"]                 = { fg = colors.class },
    ["@tag.attribute"]       = { fg = colors.method },
    ["@tag.delimiter"]       = { fg = colors.dim },

    -- ═══════════════════════════════════════════════════════════════════
    -- COMMENTS
    -- ═══════════════════════════════════════════════════════════════════
    ["@comment"]             = { fg = colors.comment, italic = opts.styles.comments.italic },
    ["@comment.documentation"] = { fg = colors.comment, italic = opts.styles.comments.italic },
    ["@comment.error"]       = { fg = colors.red, bold = true },
    ["@comment.warning"]     = { fg = colors.yellow, bold = true },
    ["@comment.todo"]        = { fg = colors.yellow, bold = true },
    ["@comment.note"]        = { fg = colors.type_builtin, bold = true },

    -- ═══════════════════════════════════════════════════════════════════
    -- MARKUP
    -- ═══════════════════════════════════════════════════════════════════
    ["@markup.heading"]      = { fg = colors.class, bold = true },
    ["@markup.italic"]       = { italic = true },
    ["@markup.strong"]       = { bold = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.underline"]    = { underline = true },
    ["@markup.link"]         = { fg = colors.type_builtin, underline = true },
    ["@markup.link.url"]     = { fg = colors.string, underline = true },
    ["@markup.raw"]          = { fg = colors.string },
    ["@markup.list"]         = { fg = colors.decorator },

    -- ═══════════════════════════════════════════════════════════════════
    -- DIFF
    -- ═══════════════════════════════════════════════════════════════════
    ["@diff.plus"]           = { fg = colors.git.add },
    ["@diff.minus"]          = { fg = colors.git.delete },
    ["@diff.delta"]          = { fg = colors.git.change },

    -- ═══════════════════════════════════════════════════════════════════
    -- LANGUAGE SPECIFIC
    -- ═══════════════════════════════════════════════════════════════════
    pythonDecorator          = { fg = colors.decorator },

    -- Python
    ["@variable.parameter.python"] = { fg = colors.dim },

    -- Rust
    ["@lsp.type.lifetime.rust"] = { fg = colors.decorator, italic = true },

    -- Go
    ["@lsp.type.namespace.go"] = { fg = colors.dim },
  }
end

return M
