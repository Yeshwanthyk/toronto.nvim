-- Toronto Summer: Hot afternoon, vibrant energy
-- Warm peach light, bold accents

local palette = {
  -- ═══════════════════════════════════════════════════════════════════
  -- BACKGROUND (peachy warmth)
  -- ═══════════════════════════════════════════════════════════════════
  bg            = "#fffaf2",
  ui_bg         = "#fff6e8",
  ui_bg_alt     = "#f8ead7",
  cursorline    = "#ffe3d4",
  visual        = "#ffd9c6",
  border        = "#e3c3a1",

  -- ═══════════════════════════════════════════════════════════════════
  -- FOREGROUND
  -- ═══════════════════════════════════════════════════════════════════
  fg            = "#22160f",
  dim           = "#9d816d",
  comment       = "#b09382",
  variable      = "#6b5548",      -- uplifted: warm cocoa (more visible)

  -- ═══════════════════════════════════════════════════════════════════
  -- COOL (ocean breeze)
  -- ═══════════════════════════════════════════════════════════════════
  keyword       = "#22160f",
  class         = "#2ca7a2",
  type_builtin  = "#40beb9",
  cyan          = "#2ca7a2",

  -- ═══════════════════════════════════════════════════════════════════
  -- WARM (summer sun)
  -- ═══════════════════════════════════════════════════════════════════
  method        = "#ff9f1c",
  string        = "#ff5c8f",      -- watermelon (kept)
  number        = "#8b6dff",      -- lavender contrast (kept)
  decorator     = "#ff9f1c",
  yellow        = "#ff9f1c",
  red           = "#e04060",      -- distinct from string

  -- ═══════════════════════════════════════════════════════════════════
  -- TERMINAL
  -- ═══════════════════════════════════════════════════════════════════
  terminal = {
    black         = "#f8ead7",
    black_bright  = "#ffd9c6",
    black_dim     = "#e3c3a1",
    red           = "#e04060",
    red_bright    = "#f05070",
    red_dim       = "#c03050",
    green         = "#2ca7a2",
    green_bright  = "#40beb9",
    green_dim     = "#218782",
    yellow        = "#ff9f1c",
    yellow_bright = "#ffb84a",
    yellow_dim    = "#d78417",
    blue          = "#8b6dff",
    blue_bright   = "#a284ff",
    blue_dim      = "#6c54c6",
    magenta       = "#ff5c8f",
    magenta_bright= "#ff77a5",
    magenta_dim   = "#d94a77",
    cyan          = "#2ca7a2",
    cyan_bright   = "#40beb9",
    cyan_dim      = "#218782",
    white         = "#22160f",
    white_bright  = "#463024",
    white_dim     = "#9d816d",
  },
}

return palette
