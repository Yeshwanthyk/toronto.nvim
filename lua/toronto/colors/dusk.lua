-- Toronto Dusk: Vesper-inspired noir
-- Near-black graphite surfaces with muted, low-glare syntax.

local palette = {
  -- ═══════════════════════════════════════════════════════════════════
  -- BACKGROUND (noir graphite)
  -- ═══════════════════════════════════════════════════════════════════
  bg            = "#050506",
  ui_bg         = "#080809",
  ui_bg_alt     = "#0c0c0d",
  cursorline    = "#0c0c0d",
  visual        = "#171512",
  border        = "#1a1a1a",

  -- ═══════════════════════════════════════════════════════════════════
  -- FOREGROUND (warm, subdued contrast)
  -- ═══════════════════════════════════════════════════════════════════
  fg            = "#c8c4b8",
  dim           = "#77736a",
  comment       = "#56524c",
  variable      = "#b8b4aa",

  -- ═══════════════════════════════════════════════════════════════════
  -- COOL SPECTRUM (receded Toronto blue)
  -- ═══════════════════════════════════════════════════════════════════
  keyword       = "#8e8a80",
  class         = "#89a9b7",
  type_builtin  = "#9bb5bd",
  cyan          = "#89a9b7",

  -- ═══════════════════════════════════════════════════════════════════
  -- TWILIGHT PURPLE (dusty rose)
  -- ═══════════════════════════════════════════════════════════════════
  string        = "#c69aa9",
  decorator     = "#a88ca8",

  -- ═══════════════════════════════════════════════════════════════════
  -- WARM (amber focus)
  -- ═══════════════════════════════════════════════════════════════════
  method        = "#d7b66f",
  number        = "#c58f62",
  yellow        = "#bfa66a",
  red           = "#c77575",

  -- ═══════════════════════════════════════════════════════════════════
  -- TERMINAL
  -- ═══════════════════════════════════════════════════════════════════
  terminal = {
    black          = "#050506",
    black_bright   = "#56524c",
    black_dim      = "#020203",
    red            = "#c77575",
    red_bright     = "#d88a8a",
    red_dim        = "#a86464",
    green          = "#89a9b7",
    green_bright   = "#9bb5bd",
    green_dim      = "#73919e",
    yellow         = "#d7b66f",
    yellow_bright  = "#e2c582",
    yellow_dim     = "#bfa66a",
    blue           = "#8e8a80",
    blue_bright    = "#a29d91",
    blue_dim       = "#77736a",
    magenta        = "#a88ca8",
    magenta_bright = "#b99db8",
    magenta_dim    = "#927891",
    cyan           = "#9bb5bd",
    cyan_bright    = "#acc4ca",
    cyan_dim       = "#829ca4",
    white          = "#c8c4b8",
    white_bright   = "#d8d3c6",
    white_dim      = "#9a958a",
  },
}

return palette
