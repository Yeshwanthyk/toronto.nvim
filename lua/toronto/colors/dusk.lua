-- Toronto Dusk: Vesper-inspired noir
-- Near-black graphite surfaces with readable, low-saturation syntax.

local palette = {
  -- ═══════════════════════════════════════════════════════════════════
  -- BACKGROUND (noir graphite)
  -- ═══════════════════════════════════════════════════════════════════
  bg            = "#161719",
  ui_bg         = "#1d1e21",
  ui_bg_alt     = "#222328",
  cursorline    = "#1e1f25",
  visual        = "#2b2c32",
  border        = "#37383f",

  -- ═══════════════════════════════════════════════════════════════════
  -- FOREGROUND (warm, subdued contrast)
  -- ═══════════════════════════════════════════════════════════════════
  fg            = "#d1cfc8",
  dim           = "#929089",
  comment       = "#86847e",
  variable      = "#bfbdb6",

  -- ═══════════════════════════════════════════════════════════════════
  -- COOL SPECTRUM (receded Toronto blue)
  -- ═══════════════════════════════════════════════════════════════════
  keyword       = "#a09d95",
  class         = "#acbbaf",
  type_builtin  = "#9ebab6",
  cyan          = "#86adb0",

  -- ═══════════════════════════════════════════════════════════════════
  -- TWILIGHT PURPLE (dusty rose)
  -- ═══════════════════════════════════════════════════════════════════
  string        = "#c6a098",
  decorator     = "#b99eb2",

  -- ═══════════════════════════════════════════════════════════════════
  -- WARM (amber focus)
  -- ═══════════════════════════════════════════════════════════════════
  method        = "#cdb073",
  number        = "#c49169",
  yellow        = "#c6aa64",
  red           = "#c37b7c",

  -- ═══════════════════════════════════════════════════════════════════
  -- TERMINAL
  -- ═══════════════════════════════════════════════════════════════════
  terminal = {
    black          = "#161719",
    black_bright   = "#5b5a56",
    black_dim      = "#030405",
    red            = "#c37b7c",
    red_bright     = "#dc9999",
    red_dim        = "#aa6c6c",
    green          = "#acbbaf",
    green_bright   = "#c9d5ca",
    green_dim      = "#91a095",
    yellow         = "#cdb073",
    yellow_bright  = "#e6cb91",
    yellow_dim     = "#b49562",
    blue           = "#86adb0",
    blue_bright    = "#a8cbcf",
    blue_dim       = "#739397",
    magenta        = "#b99eb2",
    magenta_bright = "#d3bacb",
    magenta_dim    = "#9f8999",
    cyan           = "#9ebab6",
    cyan_bright    = "#bfdbd4",
    cyan_dim       = "#839c98",
    white          = "#d1cfc8",
    white_bright   = "#e3e0d8",
    white_dim      = "#aaa8a1",
  },
}

return palette
