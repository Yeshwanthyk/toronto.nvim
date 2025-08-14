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
    SnacksPickerInputBorder   = { fg = colors.yellow, bg = colors.bg_float },
    SnacksPickerInputTitle    = { fg = colors.yellow, bg = colors.bg_float },
    SnacksPickerBoxTitle      = { fg = colors.yellow, bg = colors.bg_float },
    SnacksPickerSelected      = { fg = colors.string },
    SnacksPickerToggle        = { bg = Util.blend_bg(colors.number, 0.1), fg = colors.number },
    SnacksPickerPickWinCurrent = { fg = colors.fg, bg = colors.string, bold = true },
    SnacksPickerPickWin       = { fg = colors.fg, bg = colors.bg_search, bold = true },
  }
end

return M
