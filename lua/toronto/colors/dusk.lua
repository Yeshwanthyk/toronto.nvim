-- Base dark variant
local palette = {
  bg            = "#000000",
  fg            = "#ffffff",
  dim           = "#cccccc",
  comment       = "#b0b0b0",  -- slightly cooler than dim to separate from UI text
  string        = "#c8a2c8",  -- lavender
  number        = "#88d5ff",  -- light blue
  keyword       = "#ffffff",  -- white for keywords (def, class, if, etc.)
  method        = "#87ceeb",  -- sky blue (for methods only)
  class         = "#40e0d0",  -- turquoise green (for classes and other names)
  type_builtin  = "#4ec9b0",  -- cyan
  variable      = "#dcdcdc",  -- light gray (slightly dimmer than fg)
  decorator     = "#cc6600",  -- dark orange
  red           = "#ff8899",
  yellow        = "#b8860b",
  cyan          = "#4ec9b0",

  -- UI tints
  ui_bg         = "#0f0f0f",
  ui_bg_alt     = "#111111",
  cursorline    = "#2a2a2a",
  visual        = "#333333",
  border        = "#262626",
}

return palette