local M = {}

function M.get(colors, opts)
  return {
    -- Treesitter
    ["@variable"]            = { fg = colors.variable },
    ["@variable.builtin"]    = { fg = colors.variable, bold = true },
    ["@variable.parameter"]  = { fg = colors.class },
    ["@variable.member"]     = { fg = colors.class },

    ["@field"]               = { fg = colors.class },
    ["@property"]            = { fg = colors.class },
    ["@constant"]            = { fg = colors.fg },
    ["@constant.builtin"]    = { fg = colors.fg, bold = true },
    ["@constant.macro"]      = { fg = colors.decorator },

    ["@string"]              = { fg = colors.string },
    ["@string.regex"]        = { fg = colors.string },
    ["@string.escape"]       = { fg = colors.yellow },
    ["@character"]           = { fg = colors.string },
    ["@number"]              = { fg = colors.class },
    ["@boolean"]             = { fg = colors.fg, bold = true },
    ["@float"]               = { fg = colors.class },

    ["@function"]            = { fg = colors.class, bold = opts.styles.functions.bold },
    ["@function.builtin"]    = { fg = colors.class, bold = opts.styles.functions.bold },
    ["@method"]              = { fg = colors.class, bold = opts.styles.functions.bold },
    ["@constructor"]         = { fg = colors.class, bold = true },
    ["@parameter"]           = { fg = colors.class },

    ["@keyword"]             = { fg = colors.keyword, bold = opts.styles.keywords.bold },
    ["@keyword.function"]    = { fg = colors.keyword, bold = opts.styles.keywords.bold },
    ["@keyword.operator"]    = { fg = colors.fg },
    ["@keyword.return"]      = { fg = colors.keyword, bold = opts.styles.keywords.bold },

    ["@type"]                = { fg = colors.class, bold = true },
    ["@type.builtin"]        = { fg = colors.type_builtin },
    ["@type.definition"]     = { fg = colors.class, bold = true },

    ["@namespace"]           = { fg = colors.class },
    ["@symbol"]              = { fg = colors.class },

    ["@punctuation"]         = { fg = colors.fg },
    ["@punctuation.bracket"] = { fg = colors.fg },
    ["@punctuation.delimiter"] = { fg = colors.fg },

    ["@attribute"]           = { fg = colors.decorator },
    ["@decorator"]           = { fg = colors.decorator },

    -- Language specific
    pythonDecorator          = { fg = colors.decorator },
  }
end

return M