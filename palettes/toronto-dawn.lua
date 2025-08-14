local palette = {
  bg            = "#ffffff",  -- white background
  fg            = "#000000",  -- black text
  dim           = "#666666",  -- darker gray for less important text
  comment       = "#707070",  -- medium gray for comments
  string        = "#8b4b8b",  -- darker purple for strings
  number        = "#1e5f99",  -- darker blue for numbers
  keyword       = "#000000",  -- black for keywords (def, class, if, etc.)
  method        = "#4169e1",  -- royal blue (for methods only)
  class         = "#2e7d7d",  -- dark teal (for classes and other names)
  type_builtin  = "#1a7a7a",  -- dark cyan
  variable      = "#333333",  -- dark gray for variables
  decorator     = "#b8860b",  -- dark goldenrod for decorators
  red           = "#cc3366",  -- darker red
  yellow        = "#d2691e",  -- chocolate/orange for warnings
  cyan          = "#228b8d",  -- dark cyan

  -- UI tints
  ui_bg         = "#f8f8f8",  -- very light gray
  ui_bg_alt     = "#f0f0f0",  -- light gray
  cursorline    = "#e8e8e8",  -- light gray for cursor line
  visual        = "#d0d0d0",  -- medium light gray for selection
  border        = "#c0c0c0",  -- medium gray for borders
}

return palette
