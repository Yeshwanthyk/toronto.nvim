-- Toronto Dusk: Deep night, bright lights
-- Dark bg + punchy syntax for contrast

local palette = {
  -- ═══════════════════════════════════════════════════════════════════
  -- BACKGROUND (deep night - unchanged)
  -- ═══════════════════════════════════════════════════════════════════
  bg            = "#08090e",
  ui_bg         = "#0c0e14",
  ui_bg_alt     = "#12141c",
  cursorline    = "#0e1018",
  visual        = "#1a1e2a",
  border        = "#20242e",

  -- ═══════════════════════════════════════════════════════════════════
  -- FOREGROUND (brighter)
  -- ═══════════════════════════════════════════════════════════════════
  fg            = "#d4d8e4",      -- brighter main text
  dim           = "#808898",
  comment       = "#555c6c",      -- visible but receded
  variable      = "#c0c4d0",

  -- ═══════════════════════════════════════════════════════════════════
  -- COOL SPECTRUM (punchier)
  -- ═══════════════════════════════════════════════════════════════════
  keyword       = "#8898b8",      -- brighter steel
  class         = "#7cb8dc",      -- punchy sky blue
  type_builtin  = "#8cc4e4",
  cyan          = "#7cb8dc",

  -- ═══════════════════════════════════════════════════════════════════
  -- TWILIGHT PURPLE (richer)
  -- ═══════════════════════════════════════════════════════════════════
  string        = "#d0a8c0",      -- brighter lavender
  decorator     = "#b898c8",      -- richer purple

  -- ═══════════════════════════════════════════════════════════════════
  -- WARM (glowing)
  -- ═══════════════════════════════════════════════════════════════════
  method        = "#e8c080",      -- bright amber
  number        = "#e0a070",      -- vivid orange
  yellow        = "#dcb060",      -- golden
  red           = "#e07878",      -- clear red

  -- ═══════════════════════════════════════════════════════════════════
  -- TERMINAL
  -- ═══════════════════════════════════════════════════════════════════
  terminal = {
    black         = "#08090e",
    black_bright  = "#555c6c",
    black_dim     = "#040508",
    red           = "#e07878",
    red_bright    = "#f08888",
    red_dim       = "#c86868",
    green         = "#7cb8dc",
    green_bright  = "#8cc8ec",
    green_dim     = "#6ca8cc",
    yellow        = "#e8c080",
    yellow_bright = "#f8d090",
    yellow_dim    = "#d8b070",
    blue          = "#8898b8",
    blue_bright   = "#98a8c8",
    blue_dim      = "#7888a8",
    magenta       = "#b898c8",
    magenta_bright= "#c8a8d8",
    magenta_dim   = "#a888b8",
    cyan          = "#8cc4e4",
    cyan_bright   = "#9cd4f4",
    cyan_dim      = "#7cb4d4",
    white         = "#d4d8e4",
    white_bright  = "#e4e8f4",
    white_dim     = "#a4a8b4",
  },
}

return palette
