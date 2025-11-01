local palette = {
  bg            = "#000000",
  fg            = "#f6f6f6",
  dim           = "#d0d0e8",
  comment       = "#a0a0b8",  -- cooler gray to soften long-form comments
  string        = "#d98cff",  -- vivid orchid strings
  number        = "#56c8ff",  -- neon sky for numbers/constants
  keyword       = "#f6f6f6",  -- bright but slightly softened white keywords
  method        = "#7fd2ff",  -- electric blue for functions/methods
  class         = "#32ffe0",  -- saturated aqua for classes/types
  type_builtin  = "#56ffe8",  -- lighter aqua for builtins
  variable      = "#e0e0ff",  -- gentle lilac foreground for identifiers
  decorator     = "#ff9455",  -- warm accent for decorators/macros
  red           = "#ff8899",
  yellow        = "#b8860b",
  cyan          = "#32ffe0",

  -- UI tints that match the refreshed Zed port
  ui_bg         = "#0f0f0f",
  ui_bg_alt     = "#111111",
  cursorline    = "#1a1320",
  visual        = "#3f2d4a",
  border        = "#262626",

  terminal = {
    black = "#0f0f0f",
    black_bright = "#0f0f0f",
    black_dim = "#0f0f0f",
    red = "#ff8899",
    red_bright = "#ff8899",
    red_dim = "#ff8899",
    green = "#32ffe0",
    green_bright = "#32ffe0",
    green_dim = "#32ffe0",
    yellow = "#b8860b",
    yellow_bright = "#b8860b",
    yellow_dim = "#b8860b",
    blue = "#7fd2ff",
    blue_bright = "#7fd2ff",
    blue_dim = "#7fd2ff",
    magenta = "#d98cff",
    magenta_bright = "#d98cff",
    magenta_dim = "#d98cff",
    cyan = "#32ffe0",
    cyan_bright = "#32ffe0",
    cyan_dim = "#32ffe0",
    white = "#f6f6f6",
    white_bright = "#f6f6f6",
    white_dim = "#d0d0e8",
  },
}

return palette
