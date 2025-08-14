local M = {}

function M.get(colors, opts)
  local bg = opts.transparent and "NONE" or colors.bg

  return {
    -- Base UI
    Normal        = { fg = colors.fg, bg = bg },
    NormalNC      = { fg = opts.dim_inactive and colors.dim or colors.fg, bg = bg },
    SignColumn    = { bg = bg },
    EndOfBuffer   = { fg = colors.border, bg = bg },
    NonText       = { fg = colors.border },
    WinSeparator  = { fg = colors.border, bg = bg },
    VertSplit     = { fg = colors.border, bg = bg },
    ColorColumn   = { bg = colors.ui_bg_alt },
    Conceal       = { fg = colors.border },

    -- Cursor & selection
    Cursor        = { reverse = true },
    CursorLine    = { bg = colors.cursorline },
    CursorColumn  = { bg = colors.cursorline },
    Visual        = { bg = colors.visual },
    VisualNOS     = { bg = colors.visual },
    MatchParen    = { fg = colors.yellow, bold = true },

    -- Line numbers & folds
    LineNr        = { fg = colors.dim },
    CursorLineNr  = { fg = colors.fg, bold = true },
    Folded        = { fg = colors.dim, bg = colors.ui_bg },
    FoldColumn    = { fg = colors.dim, bg = bg },

    -- Search
    Search        = { fg = colors.bg, bg = colors.yellow },
    IncSearch     = { fg = colors.bg, bg = colors.number, bold = true },
    Substitute    = { fg = colors.bg, bg = colors.method, bold = true },

    -- Menus & popups
    Pmenu         = { fg = colors.fg, bg = colors.ui_bg },
    PmenuSel      = { fg = colors.bg, bg = colors.method, bold = true },
    PmenuSbar     = { bg = colors.ui_bg_alt },
    PmenuThumb    = { bg = colors.border },

    -- Statusline & tabs
    StatusLine    = { fg = colors.fg, bg = colors.ui_bg, bold = true },
    StatusLineNC  = { fg = colors.dim, bg = colors.ui_bg },
    TabLine       = { fg = colors.dim, bg = colors.ui_bg },
    TabLineSel    = { fg = colors.bg, bg = colors.method, bold = true },
    TabLineFill   = { fg = colors.dim, bg = colors.ui_bg },
    WinBar        = { fg = colors.dim, bg = bg },
    WinBarNC      = { fg = colors.border, bg = bg },

    -- Diagnostics
    Error         = { fg = colors.red, bold = true },
    ErrorMsg      = { fg = colors.red, bold = true },
    WarningMsg    = { fg = colors.yellow, bold = true },

    DiagnosticError = { fg = colors.red, bold = true },
    DiagnosticWarn  = { fg = colors.yellow, bold = true },
    DiagnosticInfo  = { fg = colors.number, bold = true },
    DiagnosticHint  = { fg = colors.dim, bold = true },

    DiagnosticVirtualTextError = { fg = colors.red, bg = colors.ui_bg_alt },
    DiagnosticVirtualTextWarn  = { fg = colors.yellow, bg = colors.ui_bg_alt },
    DiagnosticVirtualTextInfo  = { fg = colors.number, bg = colors.ui_bg_alt },
    DiagnosticVirtualTextHint  = { fg = colors.dim, bg = colors.ui_bg_alt },

    DiagnosticUnderlineError = { sp = colors.red, undercurl = true },
    DiagnosticUnderlineWarn  = { sp = colors.yellow, undercurl = true },
    DiagnosticUnderlineInfo  = { sp = colors.number, undercurl = true },
    DiagnosticUnderlineHint  = { sp = colors.dim, undercurl = true },

    -- LSP
    LspReferenceText  = { bg = colors.ui_bg_alt },
    LspReferenceRead  = { bg = colors.ui_bg_alt },
    LspReferenceWrite = { bg = colors.ui_bg_alt },
    LspSignatureActiveParameter = { fg = colors.yellow, bold = true },
    LspInlayHint = { fg = colors.dim, bg = colors.ui_bg },

    -- Diff / Git
    DiffAdd    = { fg = colors.git.add },
    DiffChange = { fg = colors.git.change },
    DiffDelete = { fg = colors.git.delete },
    DiffText   = { fg = colors.git.change, bold = true },

    -- Spelling
    SpellBad   = { sp = colors.red, undercurl = true },
    SpellCap   = { sp = colors.number, undercurl = true },
    SpellLocal = { sp = colors.method, undercurl = true },
    SpellRare  = { sp = colors.string, undercurl = true },

    -- QuickFix
    QuickFixLine = { bg = colors.ui_bg_alt, bold = true },
    SpecialKey   = { fg = colors.border },

    -- Todo
    Todo         = { fg = colors.bg, bg = colors.yellow, bold = true },
  }
end

return M
