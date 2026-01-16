local M = {}

function M.get(colors, opts)
  local bg = opts.transparent and "NONE" or colors.bg

  return {
    -- ═══════════════════════════════════════════════════════════════════
    -- BASE UI
    -- ═══════════════════════════════════════════════════════════════════
    Normal        = { fg = colors.fg, bg = bg },
    NormalNC      = { fg = opts.dim_inactive and colors.dim or colors.fg, bg = bg },
    NormalFloat   = { fg = colors.fg, bg = colors.ui_bg },
    FloatBorder   = { fg = colors.border, bg = colors.ui_bg },
    FloatTitle    = { fg = colors.class, bg = colors.ui_bg, bold = true },
    SignColumn    = { bg = bg },
    EndOfBuffer   = { fg = colors.bg },
    NonText       = { fg = colors.border },
    WinSeparator  = { fg = colors.border, bg = bg },
    VertSplit     = { fg = colors.border, bg = bg },
    ColorColumn   = { bg = colors.ui_bg_alt },
    Conceal       = { fg = colors.dim },

    -- ═══════════════════════════════════════════════════════════════════
    -- CURSOR & SELECTION
    -- ═══════════════════════════════════════════════════════════════════
    Cursor        = { reverse = true },
    lCursor       = { reverse = true },
    CursorIM      = { reverse = true },
    CursorLine    = { bg = colors.cursorline },
    CursorColumn  = { bg = colors.cursorline },
    Visual        = { bg = colors.visual },
    VisualNOS     = { bg = colors.visual },
    MatchParen    = { fg = colors.method, bold = true },

    -- ═══════════════════════════════════════════════════════════════════
    -- LINE NUMBERS & FOLDS
    -- ═══════════════════════════════════════════════════════════════════
    LineNr        = { fg = colors.border },
    CursorLineNr  = { fg = colors.fg, bold = true },
    LineNrAbove   = { fg = colors.border },
    LineNrBelow   = { fg = colors.border },
    Folded        = { fg = colors.dim, bg = colors.ui_bg },
    FoldColumn    = { fg = colors.border, bg = bg },

    -- ═══════════════════════════════════════════════════════════════════
    -- SEARCH
    -- ═══════════════════════════════════════════════════════════════════
    Search        = { fg = colors.bg, bg = colors.yellow },
    IncSearch     = { fg = colors.bg, bg = colors.method, bold = true },
    CurSearch     = { fg = colors.bg, bg = colors.method, bold = true },
    Substitute    = { fg = colors.bg, bg = colors.class, bold = true },

    -- ═══════════════════════════════════════════════════════════════════
    -- MENUS & POPUPS
    -- ═══════════════════════════════════════════════════════════════════
    Pmenu         = { fg = colors.fg, bg = colors.ui_bg },
    PmenuSel      = { fg = colors.bg, bg = colors.class, bold = true },
    PmenuSbar     = { bg = colors.ui_bg_alt },
    PmenuThumb    = { bg = colors.border },
    PmenuKind     = { fg = colors.class, bg = colors.ui_bg },
    PmenuKindSel  = { fg = colors.bg, bg = colors.class, bold = true },
    PmenuExtra    = { fg = colors.dim, bg = colors.ui_bg },
    PmenuExtraSel = { fg = colors.bg, bg = colors.class },

    WildMenu      = { fg = colors.bg, bg = colors.class, bold = true },

    -- ═══════════════════════════════════════════════════════════════════
    -- STATUSLINE & TABS
    -- ═══════════════════════════════════════════════════════════════════
    StatusLine    = { fg = colors.fg, bg = colors.ui_bg },
    StatusLineNC  = { fg = colors.dim, bg = colors.ui_bg },
    TabLine       = { fg = colors.dim, bg = colors.ui_bg },
    TabLineSel    = { fg = colors.fg, bg = colors.cursorline, bold = true },
    TabLineFill   = { fg = colors.dim, bg = colors.ui_bg },
    WinBar        = { fg = colors.dim, bg = bg },
    WinBarNC      = { fg = colors.border, bg = bg },

    -- ═══════════════════════════════════════════════════════════════════
    -- MESSAGES & PROMPTS
    -- ═══════════════════════════════════════════════════════════════════
    MsgArea       = { fg = colors.fg },
    ModeMsg       = { fg = colors.fg, bold = true },
    MoreMsg       = { fg = colors.class },
    Question      = { fg = colors.class },
    Title         = { fg = colors.class, bold = true },
    Directory     = { fg = colors.class },

    -- ═══════════════════════════════════════════════════════════════════
    -- DIAGNOSTICS
    -- ═══════════════════════════════════════════════════════════════════
    Error         = { fg = colors.red },
    ErrorMsg      = { fg = colors.red },
    WarningMsg    = { fg = colors.yellow },

    DiagnosticError = { fg = colors.red },
    DiagnosticWarn  = { fg = colors.yellow },
    DiagnosticInfo  = { fg = colors.type_builtin },
    DiagnosticHint  = { fg = colors.dim },
    DiagnosticOk    = { fg = colors.class },

    DiagnosticVirtualTextError = { fg = colors.red, bg = colors.ui_bg },
    DiagnosticVirtualTextWarn  = { fg = colors.yellow, bg = colors.ui_bg },
    DiagnosticVirtualTextInfo  = { fg = colors.type_builtin, bg = colors.ui_bg },
    DiagnosticVirtualTextHint  = { fg = colors.dim, bg = colors.ui_bg },
    DiagnosticVirtualTextOk    = { fg = colors.class, bg = colors.ui_bg },

    DiagnosticUnderlineError = { sp = colors.red, undercurl = true },
    DiagnosticUnderlineWarn  = { sp = colors.yellow, undercurl = true },
    DiagnosticUnderlineInfo  = { sp = colors.type_builtin, undercurl = true },
    DiagnosticUnderlineHint  = { sp = colors.dim, undercurl = true },
    DiagnosticUnderlineOk    = { sp = colors.class, undercurl = true },

    DiagnosticSignError = { fg = colors.red },
    DiagnosticSignWarn  = { fg = colors.yellow },
    DiagnosticSignInfo  = { fg = colors.type_builtin },
    DiagnosticSignHint  = { fg = colors.dim },
    DiagnosticSignOk    = { fg = colors.class },

    -- ═══════════════════════════════════════════════════════════════════
    -- LSP
    -- ═══════════════════════════════════════════════════════════════════
    LspReferenceText  = { bg = colors.ui_bg_alt },
    LspReferenceRead  = { bg = colors.ui_bg_alt },
    LspReferenceWrite = { bg = colors.ui_bg_alt },
    LspSignatureActiveParameter = { fg = colors.method, bold = true },
    LspInlayHint = { fg = colors.comment, bg = colors.ui_bg },
    LspCodeLens = { fg = colors.comment },

    -- ═══════════════════════════════════════════════════════════════════
    -- DIFF / GIT
    -- ═══════════════════════════════════════════════════════════════════
    DiffAdd    = { fg = colors.git.add },
    DiffChange = { fg = colors.git.change },
    DiffDelete = { fg = colors.git.delete },
    DiffText   = { fg = colors.git.change, bold = true },

    Added      = { fg = colors.git.add },
    Changed    = { fg = colors.git.change },
    Removed    = { fg = colors.git.delete },

    diffAdded   = { fg = colors.git.add },
    diffChanged = { fg = colors.git.change },
    diffRemoved = { fg = colors.git.delete },
    diffOldFile = { fg = colors.git.delete },
    diffNewFile = { fg = colors.git.add },
    diffFile    = { fg = colors.class },
    diffLine    = { fg = colors.comment },
    diffIndexLine = { fg = colors.dim },

    -- ═══════════════════════════════════════════════════════════════════
    -- SPELLING
    -- ═══════════════════════════════════════════════════════════════════
    SpellBad   = { sp = colors.red, undercurl = true },
    SpellCap   = { sp = colors.yellow, undercurl = true },
    SpellLocal = { sp = colors.type_builtin, undercurl = true },
    SpellRare  = { sp = colors.decorator, undercurl = true },

    -- ═══════════════════════════════════════════════════════════════════
    -- MISC
    -- ═══════════════════════════════════════════════════════════════════
    QuickFixLine = { bg = colors.ui_bg_alt, bold = true },
    SpecialKey   = { fg = colors.border },
    Todo         = { fg = colors.bg, bg = colors.yellow, bold = true },

    -- Health
    healthError   = { fg = colors.red },
    healthSuccess = { fg = colors.class },
    healthWarning = { fg = colors.yellow },
  }
end

return M
