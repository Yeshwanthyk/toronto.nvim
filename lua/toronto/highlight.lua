local M = {}

local function set_terminal_colors(palette)
  vim.g.terminal_color_0  = palette.bg
  vim.g.terminal_color_1  = palette.red
  vim.g.terminal_color_2  = palette.method
  vim.g.terminal_color_3  = palette.yellow
  vim.g.terminal_color_4  = palette.number
  vim.g.terminal_color_5  = palette.string
  vim.g.terminal_color_6  = palette.cyan
  vim.g.terminal_color_7  = palette.fg
  vim.g.terminal_color_8  = palette.border
  vim.g.terminal_color_9  = palette.red
  vim.g.terminal_color_10 = palette.method
  vim.g.terminal_color_11 = palette.yellow
  vim.g.terminal_color_12 = palette.number
  vim.g.terminal_color_13 = palette.string
  vim.g.terminal_color_14 = palette.cyan
  vim.g.terminal_color_15 = palette.fg
end

function M.apply(spec)
  local name        = spec.name
  local background  = spec.background
  local palette     = spec.palette or {}
  local defaults    = spec.defaults or {}
  local overrides   = spec.overrides or {}

  defaults = vim.tbl_extend('force', {
    transparent = false,
    bold_keywords = false,
    italic_comments = true,
    dim_inactive = false,
  }, defaults)

  vim.cmd('highlight clear')
  if vim.g.syntax_on == 1 then
    vim.cmd('syntax reset')
  end

  if background then vim.o.background = background end
  if name then vim.g.colors_name = name end

  local function hi(group, spec)
    vim.api.nvim_set_hl(0, group, spec)
  end

  local bg = defaults.transparent and "NONE" or palette.bg

  set_terminal_colors(palette)

  -- Base UI
  hi('Normal',        { fg = palette.fg, bg = bg })
  hi('NormalNC',      { fg = defaults.dim_inactive and palette.dim or palette.fg, bg = bg })
  hi('SignColumn',    { bg = bg })
  hi('EndOfBuffer',   { fg = palette.border, bg = bg })
  hi('NonText',       { fg = palette.border })
  hi('WinSeparator',  { fg = palette.border, bg = bg })
  hi('VertSplit',     { fg = palette.border, bg = bg })
  hi('ColorColumn',   { bg = palette.ui_bg_alt })
  hi('Conceal',       { fg = palette.border })

  -- Cursor & selection
  hi('Cursor',        { reverse = true })
  hi('CursorLine',    { bg = palette.cursorline })
  hi('CursorColumn',  { bg = palette.cursorline })
  hi('Visual',        { bg = palette.visual })
  hi('VisualNOS',     { bg = palette.visual })
  hi('MatchParen',    { fg = palette.yellow, bold = true })

  -- Line numbers & folds
  hi('LineNr',        { fg = palette.dim })
  hi('CursorLineNr',  { fg = palette.fg, bold = true })
  hi('Folded',        { fg = palette.dim, bg = palette.ui_bg })
  hi('FoldColumn',    { fg = palette.dim, bg = bg })

  -- Search
  hi('Search',        { fg = palette.bg, bg = palette.yellow })
  hi('IncSearch',     { fg = palette.bg, bg = palette.number, bold = true })
  hi('Substitute',    { fg = palette.bg, bg = palette.method, bold = true })

  -- Menus & popups
  hi('Pmenu',         { fg = palette.fg, bg = palette.ui_bg })
  hi('PmenuSel',      { fg = palette.bg, bg = palette.method, bold = true })
  hi('PmenuSbar',     { bg = palette.ui_bg_alt })
  hi('PmenuThumb',    { bg = palette.border })

  -- Statusline & tabs
  hi('StatusLine',    { fg = palette.fg, bg = palette.ui_bg, bold = true })
  hi('StatusLineNC',  { fg = palette.dim, bg = palette.ui_bg })
  hi('TabLine',       { fg = palette.dim, bg = palette.ui_bg })
  hi('TabLineSel',    { fg = palette.bg, bg = palette.method, bold = true })
  hi('TabLineFill',   { fg = palette.dim, bg = palette.ui_bg })
  hi('WinBar',        { fg = palette.dim, bg = bg })
  hi('WinBarNC',      { fg = palette.border, bg = bg })

  -- Diagnostics
  hi('Error',         { fg = palette.red, bold = true })
  hi('ErrorMsg',      { fg = palette.red, bold = true })
  hi('WarningMsg',    { fg = palette.yellow, bold = true })

  hi('DiagnosticError', { fg = palette.red, bold = true })
  hi('DiagnosticWarn',  { fg = palette.yellow, bold = true })
  hi('DiagnosticInfo',  { fg = palette.number, bold = true })
  hi('DiagnosticHint',  { fg = palette.dim, bold = true })

  hi('DiagnosticVirtualTextError', { fg = palette.red, bg = palette.ui_bg_alt })
  hi('DiagnosticVirtualTextWarn',  { fg = palette.yellow, bg = palette.ui_bg_alt })
  hi('DiagnosticVirtualTextInfo',  { fg = palette.number, bg = palette.ui_bg_alt })
  hi('DiagnosticVirtualTextHint',  { fg = palette.dim, bg = palette.ui_bg_alt })

  hi('DiagnosticUnderlineError', { sp = palette.red, undercurl = true })
  hi('DiagnosticUnderlineWarn',  { sp = palette.yellow, undercurl = true })
  hi('DiagnosticUnderlineInfo',  { sp = palette.number, undercurl = true })
  hi('DiagnosticUnderlineHint',  { sp = palette.dim, undercurl = true })

  hi('LspReferenceText',  { bg = palette.ui_bg_alt })
  hi('LspReferenceRead',  { bg = palette.ui_bg_alt })
  hi('LspReferenceWrite', { bg = palette.ui_bg_alt })
  hi('LspSignatureActiveParameter', { fg = palette.yellow, bold = true })
  hi('LspInlayHint', { fg = palette.dim, bg = palette.ui_bg })

  -- Basic syntax
  hi('Comment',      { fg = palette.comment, italic = defaults.italic_comments })
  hi('String',       { fg = palette.string })
  hi('Character',    { fg = palette.string })
  hi('Number',       { fg = palette.class })
  hi('Float',        { fg = palette.class })
  hi('Boolean',      { fg = palette.fg, bold = true })
  hi('Constant',     { fg = palette.fg })
  hi('Identifier',   { fg = palette.variable })
  hi('Function',     { fg = palette.class, bold = true })

  hi('Statement',    { fg = palette.keyword, bold = defaults.bold_keywords })
  hi('Conditional',  { fg = palette.keyword, bold = defaults.bold_keywords })
  hi('Repeat',       { fg = palette.keyword, bold = defaults.bold_keywords })
  hi('Label',        { fg = palette.keyword })
  hi('Operator',     { fg = palette.fg })
  hi('Keyword',      { fg = palette.keyword, bold = defaults.bold_keywords })
  hi('Exception',    { fg = palette.keyword })

  hi('PreProc',      { fg = palette.fg })
  hi('Define',       { fg = palette.fg })
  hi('Include',      { fg = palette.fg, bold = true })
  hi('Macro',        { fg = palette.decorator })
  hi('PreCondit',    { fg = palette.decorator })

  hi('Type',         { fg = palette.class, bold = true })
  hi('StorageClass', { fg = palette.fg })
  hi('Structure',    { fg = palette.class, bold = true })
  hi('Typedef',      { fg = palette.fg })

  hi('Special',      { fg = palette.class })
  hi('SpecialChar',  { fg = palette.class })
  hi('Tag',          { fg = palette.keyword })
  hi('Delimiter',    { fg = palette.fg })
  hi('SpecialComment', { fg = palette.comment, italic = true })
  hi('Debug',        { fg = palette.red })

  hi('Todo',         { fg = palette.bg, bg = palette.yellow, bold = true })

  -- Treesitter
  hi('@variable',            { fg = palette.variable })
  hi('@variable.builtin',    { fg = palette.variable, bold = true })
  hi('@variable.parameter',  { fg = palette.class })
  hi('@variable.member',     { fg = palette.class })

  hi('@field',               { fg = palette.class })
  hi('@property',            { fg = palette.class })
  hi('@constant',            { fg = palette.fg })
  hi('@constant.builtin',    { fg = palette.fg, bold = true })
  hi('@constant.macro',      { fg = palette.decorator })

  hi('@string',              { fg = palette.string })
  hi('@string.regex',        { fg = palette.string })
  hi('@string.escape',       { fg = palette.yellow })
  hi('@character',           { fg = palette.string })
  hi('@number',              { fg = palette.class })
  hi('@boolean',             { fg = palette.fg, bold = true })
  hi('@float',               { fg = palette.class })

  hi('@function',            { fg = palette.class, bold = true })
  hi('@function.builtin',    { fg = palette.class, bold = true })
  hi('@method',              { fg = palette.class, bold = true })
  hi('@constructor',         { fg = palette.class, bold = true })
  hi('@parameter',           { fg = palette.class })

  hi('@keyword',             { fg = palette.keyword, bold = defaults.bold_keywords })
  hi('@keyword.function',    { fg = palette.keyword, bold = defaults.bold_keywords })
  hi('@keyword.operator',    { fg = palette.fg })
  hi('@keyword.return',      { fg = palette.keyword, bold = defaults.bold_keywords })

  hi('@type',                { fg = palette.class, bold = true })
  hi('@type.builtin',        { fg = palette.type_builtin })
  hi('@type.definition',     { fg = palette.class, bold = true })

  hi('@namespace',           { fg = palette.class })
  hi('@symbol',              { fg = palette.class })

  hi('@punctuation',         { fg = palette.fg })
  hi('@punctuation.bracket', { fg = palette.fg })
  hi('@punctuation.delimiter', { fg = palette.fg })

  hi('@attribute',           { fg = palette.decorator })
  hi('@decorator',           { fg = palette.decorator })

  -- Language specific
  hi('pythonDecorator',      { fg = palette.decorator })

  -- Diff / Git
  hi('DiffAdd',    { fg = palette.method })
  hi('DiffChange', { fg = palette.number })
  hi('DiffDelete', { fg = palette.red })
  hi('DiffText',   { fg = palette.number, bold = true })

  hi('GitSignsAdd',    { fg = palette.method })
  hi('GitSignsChange', { fg = palette.number })
  hi('GitSignsDelete', { fg = palette.red })

  -- Spelling
  hi('SpellBad',   { sp = palette.red, undercurl = true })
  hi('SpellCap',   { sp = palette.number, undercurl = true })
  hi('SpellLocal', { sp = palette.method, undercurl = true })
  hi('SpellRare',  { sp = palette.string, undercurl = true })

  -- QuickFix
  hi('QuickFixLine', { bg = palette.ui_bg_alt, bold = true })
  hi('SpecialKey',   { fg = palette.border })

  -- Telescope
  hi('TelescopeBorder',       { fg = palette.border, bg = palette.ui_bg })
  hi('TelescopeNormal',       { fg = palette.fg, bg = palette.ui_bg })
  hi('TelescopeSelection',    { fg = palette.bg, bg = palette.method, bold = true })
  hi('TelescopeSelectionCaret',{ fg = palette.bg, bg = palette.method })
  hi('TelescopeMatching',     { fg = palette.number, bold = true })

  -- NvimTree
  hi('NvimTreeNormal',   { fg = palette.fg, bg = palette.ui_bg })
  hi('NvimTreeFolderName',{ fg = palette.fg })
  hi('NvimTreeRootFolder',{ fg = palette.keyword, bold = true })
  hi('NvimTreeOpenedFile',{ fg = palette.method, bold = true })

  -- Apply overrides last (additions or changes)
  for group, spec in pairs(overrides) do
    hi(group, spec)
  end
end

return M

