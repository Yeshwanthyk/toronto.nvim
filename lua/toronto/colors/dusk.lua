-- Toronto Dusk: Vesper-inspired noir
-- Near-black graphite surfaces with readable, low-saturation syntax.

local palette = {
  -- ═══════════════════════════════════════════════════════════════════
  -- BACKGROUND (noir graphite)
  -- ═══════════════════════════════════════════════════════════════════
  bg            = "#08090b",
  ui_bg         = "#0d0e11",
  ui_bg_alt     = "#121318",
  cursorline    = "#121318",
  visual        = "#1c1d22",
  border        = "#27282e",

  -- ═══════════════════════════════════════════════════════════════════
  -- FOREGROUND (warm, subdued contrast)
  -- ═══════════════════════════════════════════════════════════════════
  fg            = "#d4d2cb",
  dim           = "#94918a",
  comment       = "#85837d",
  variable      = "#c3c0b9",

  -- ═══════════════════════════════════════════════════════════════════
  -- COOL SPECTRUM (receded Toronto blue)
  -- ═══════════════════════════════════════════════════════════════════
  keyword       = "#aba79f",
  class         = "#b8c7bb",
  type_builtin  = "#a9c5c1",
  cyan          = "#91b8bc",

  -- ═══════════════════════════════════════════════════════════════════
  -- TWILIGHT PURPLE (dusty rose)
  -- ═══════════════════════════════════════════════════════════════════
  string        = "#d2aca3",
  decorator     = "#c4a9bd",

  -- ═══════════════════════════════════════════════════════════════════
  -- WARM (amber focus)
  -- ═══════════════════════════════════════════════════════════════════
  method        = "#d9bc7e",
  number        = "#cf9b73",
  yellow        = "#d2b56f",
  red           = "#ce8585",

  -- ═══════════════════════════════════════════════════════════════════
  -- TERMINAL
  -- ═══════════════════════════════════════════════════════════════════
  terminal = {
    black          = "#08090b",
    black_bright   = "#5b5a56",
    black_dim      = "#030405",
    red            = "#ce8585",
    red_bright     = "#dc9999",
    red_dim        = "#aa6c6c",
    green          = "#b8c7bb",
    green_bright   = "#c9d5ca",
    green_dim      = "#91a095",
    yellow         = "#d9bc7e",
    yellow_bright  = "#e6cb91",
    yellow_dim     = "#b49562",
    blue           = "#91b8bc",
    blue_bright    = "#a8cbcf",
    blue_dim       = "#739397",
    magenta        = "#c4a9bd",
    magenta_bright = "#d3bacb",
    magenta_dim    = "#9f8999",
    cyan           = "#a9c5c1",
    cyan_bright    = "#bfdbd4",
    cyan_dim       = "#839c98",
    white          = "#d4d2cb",
    white_bright   = "#e3e0d8",
    white_dim      = "#aaa8a1",
  },
}

return palette
