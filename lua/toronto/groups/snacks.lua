local M = {}

function M.get(colors, opts)
  local Util = require("toronto.util")

  return {
    -- Notifier
    SnacksNotifierDebug       = { fg = colors.fg, bg = opts.transparent and colors.none or colors.bg },
    SnacksNotifierBorderDebug = { fg = Util.blend_bg(colors.comment, 0.4), bg = opts.transparent and colors.none or colors.bg },
    SnacksNotifierIconDebug   = { fg = colors.comment },
    SnacksNotifierTitleDebug  = { fg = colors.comment },
    SnacksNotifierError       = { fg = colors.fg, bg = opts.transparent and colors.none or colors.bg },
    SnacksNotifierBorderError = { fg = Util.blend_bg(colors.error, 0.4), bg = opts.transparent and colors.none or colors.bg },
    SnacksNotifierIconError   = { fg = colors.error },
    SnacksNotifierTitleError  = { fg = colors.error },
    SnacksNotifierInfo        = { fg = colors.fg, bg = opts.transparent and colors.none or colors.bg },
    SnacksNotifierBorderInfo  = { fg = Util.blend_bg(colors.info, 0.4), bg = opts.transparent and colors.none or colors.bg },
    SnacksNotifierIconInfo    = { fg = colors.info },
    SnacksNotifierTitleInfo   = { fg = colors.info },
    SnacksNotifierTrace       = { fg = colors.fg, bg = opts.transparent and colors.none or colors.bg },
    SnacksNotifierBorderTrace = { fg = Util.blend_bg(colors.string, 0.4), bg = opts.transparent and colors.none or colors.bg },
    SnacksNotifierIconTrace   = { fg = colors.string },
    SnacksNotifierTitleTrace  = { fg = colors.string },
    SnacksNotifierWarn        = { fg = colors.fg, bg = opts.transparent and colors.none or colors.bg },
    SnacksNotifierBorderWarn  = { fg = Util.blend_bg(colors.warning, 0.4), bg = opts.transparent and colors.none or colors.bg },
    SnacksNotifierIconWarn    = { fg = colors.warning },
    SnacksNotifierTitleWarn   = { fg = colors.warning },

    -- Dashboard
    SnacksDashboardDesc       = { fg = colors.cyan },
    SnacksDashboardFooter     = { fg = colors.number },
    SnacksDashboardHeader     = { fg = colors.method },
    SnacksDashboardIcon       = { fg = colors.number },
    SnacksDashboardKey        = { fg = colors.yellow },
    SnacksDashboardSpecial    = { fg = colors.string },
    SnacksDashboardDir        = { fg = colors.dim },

    -- Profiler
    SnacksProfilerIconInfo    = { bg = Util.blend_bg(colors.number, 0.3), fg = colors.number },
    SnacksProfilerBadgeInfo   = { bg = Util.blend_bg(colors.number, 0.1), fg = colors.number },
    SnacksScratchKey          = { bg = Util.blend_bg(colors.number, 0.3), fg = colors.number },
    SnacksScratchDesc         = { bg = Util.blend_bg(colors.number, 0.1), fg = colors.number },
    SnacksProfilerIconTrace   = { bg = Util.blend_bg(colors.method, 0.3), fg = colors.dim },
    SnacksProfilerBadgeTrace  = { bg = Util.blend_bg(colors.method, 0.1), fg = colors.dim },

    -- Indent
    SnacksIndent              = { fg = colors.border, nocombine = true },
    SnacksIndentScope         = { fg = colors.method, nocombine = true },

    -- Other components
    SnacksZenIcon             = { fg = colors.string },
    SnacksInputIcon           = { fg = colors.number },
    SnacksInputBorder         = { fg = colors.yellow },
    SnacksInputTitle          = { fg = colors.yellow },

    -- Picker
    SnacksPickerInputBorder      = { fg = colors.yellow, bg = colors.bg_float },
    SnacksPickerInputTitle       = { fg = colors.yellow, bg = colors.bg_float },
    SnacksPickerBoxTitle         = { fg = colors.yellow, bg = colors.bg_float },
    SnacksPickerSelected         = { fg = colors.string },
    SnacksPickerToggle           = { bg = Util.blend_bg(colors.number, 0.1), fg = colors.number },
    SnacksPickerPickWinCurrent   = { fg = colors.fg, bg = colors.string, bold = true },
    SnacksPickerPickWin          = { fg = colors.fg, bg = colors.bg_search, bold = true },
    
    -- Picker file/directory paths
    SnacksPickerFile             = { fg = colors.fg },
    SnacksPickerDirectory        = { fg = colors.method, bold = true },
    SnacksPickerDir              = { fg = colors.dim },
    SnacksPickerPathHidden       = { fg = colors.comment },
    SnacksPickerPathIgnored      = { fg = colors.border },
    SnacksPickerDelim            = { fg = colors.border },
    SnacksPickerRow              = { fg = colors.number },
    SnacksPickerCol              = { fg = colors.dim },
    SnacksPickerMatch            = { fg = colors.number, bold = true },
    SnacksPickerDimmed           = { fg = colors.dim },
    SnacksPickerLabel            = { fg = colors.cyan },
    SnacksPickerComment          = { fg = colors.comment },
    SnacksPickerLink             = { fg = colors.cyan },
    SnacksPickerLinkBroken       = { fg = colors.red },
    
    -- Picker Git
    SnacksPickerGitCommit        = { fg = colors.number },
    SnacksPickerGitBranch        = { fg = colors.method },
    SnacksPickerGitBranchCurrent = { fg = colors.string, bold = true },
    SnacksPickerGitDate          = { fg = colors.dim },
    SnacksPickerGitAuthor        = { fg = colors.variable },
    SnacksPickerGitMsg           = { fg = colors.fg },
    SnacksPickerGitType          = { fg = colors.keyword, bold = true },
    SnacksPickerGitScope         = { fg = colors.method, italic = true },
    SnacksPickerGitBreaking      = { fg = colors.red, bold = true },
    SnacksPickerGitStatus        = { fg = colors.number },
    SnacksPickerGitStatusAdded   = { fg = colors.class },
    SnacksPickerGitStatusModified = { fg = colors.yellow },
    SnacksPickerGitStatusDeleted = { fg = colors.red },
    
    -- Explorer (uses same highlights as picker)
    SnacksExplorerFile           = { fg = colors.fg },
    SnacksExplorerDirectory      = { fg = colors.method, bold = true },
    SnacksExplorerDir            = { fg = colors.dim },
    SnacksExplorerPathHidden     = { fg = colors.comment },
    SnacksExplorerPathIgnored    = { fg = colors.border },
  }
end

return M
