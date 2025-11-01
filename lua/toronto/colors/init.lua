local Util = require("toronto.util")

local M = {}

---@type table<string, Palette|fun(opts:toronto.Config):Palette>
M.styles = setmetatable({}, {
  __index = function(_, style)
    return vim.deepcopy(require("toronto.colors." .. style))
  end,
})

---@param opts? toronto.Config
function M.setup(opts)
  opts = require("toronto.config").extend(opts)

  local palette = M.styles[opts.style]
  if type(palette) == "function" then
    palette = palette(opts) --[[@as Palette]]
  end

  -- Color Palette
  ---@class ColorScheme: Palette
  local colors = palette

  Util.bg = colors.bg
  Util.fg = colors.fg

  colors.none = "NONE"

  -- Semantic color mapping
  colors.error = colors.red
  colors.warning = colors.yellow
  colors.info = colors.number
  colors.hint = colors.dim

  -- Diff colors
  colors.diff = {
    add = Util.blend_bg(colors.method, 0.15),
    delete = Util.blend_bg(colors.red, 0.15),
    change = Util.blend_bg(colors.number, 0.15),
    text = colors.number,
  }

  -- Git colors
  colors.git = {
    add = colors.method,
    change = colors.number,
    delete = colors.red,
    ignore = colors.dim,
  }

  -- Border colors
  colors.border_highlight = Util.blend_bg(colors.number, 0.8)

  -- Background variants based on transparency and style settings
  colors.bg_popup = opts.styles.floats == "transparent" and colors.none
    or opts.styles.floats == "dark" and colors.ui_bg
    or colors.bg

  colors.bg_sidebar = opts.styles.sidebars == "transparent" and colors.none
    or opts.styles.sidebars == "dark" and colors.ui_bg
    or colors.bg

  colors.bg_float = colors.bg_popup

  -- Selection and search
  colors.bg_visual = colors.visual
  colors.bg_search = colors.yellow

  -- Terminal colors
  local terminal_defaults = {
    black = colors.bg,
    black_bright = colors.border,
    red = colors.red,
    red_bright = Util.brighten(colors.red),
    green = colors.method,
    green_bright = Util.brighten(colors.method),
    yellow = colors.yellow,
    yellow_bright = Util.brighten(colors.yellow),
    blue = colors.number,
    blue_bright = Util.brighten(colors.number),
    magenta = colors.string,
    magenta_bright = Util.brighten(colors.string),
    cyan = colors.cyan,
    cyan_bright = Util.brighten(colors.cyan),
    white = colors.fg,
    white_bright = Util.brighten(colors.fg),
  }

  colors.terminal = vim.tbl_deep_extend("force", terminal_defaults, palette.terminal or {})

  -- Ensure dim variants are always present for generators that expect them.
  colors.terminal.black_dim = colors.terminal.black_dim or colors.terminal.black
  colors.terminal.red_dim = colors.terminal.red_dim or colors.terminal.red
  colors.terminal.green_dim = colors.terminal.green_dim or colors.terminal.green
  colors.terminal.yellow_dim = colors.terminal.yellow_dim or colors.terminal.yellow
  colors.terminal.blue_dim = colors.terminal.blue_dim or colors.terminal.blue
  colors.terminal.magenta_dim = colors.terminal.magenta_dim or colors.terminal.magenta
  colors.terminal.cyan_dim = colors.terminal.cyan_dim or colors.terminal.cyan
  colors.terminal.white_dim = colors.terminal.white_dim or colors.dim

  opts.on_colors(colors)

  return colors, opts
end

return M
