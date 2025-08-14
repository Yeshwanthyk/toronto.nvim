local palette = {
  bg            = "#F2EEDE",  -- Paper background color
  fg            = "#000000",  -- Paper text color
  dim           = "#555555",  -- Paper bright black for less important text
  comment       = "#707070",  -- Medium gray for comments
  string        = "#216609",  -- Paper green for strings
  number        = "#1E6FCC",  -- Paper blue for numbers
  keyword       = "#000000",  -- Black for keywords (def, class, if, etc.)
  method        = "#158c86",  -- Paper cyan for methods
  class         = "#216609",  -- Paper green for classes (consistent with strings)
  type_builtin  = "#158c86",  -- Paper cyan for built-in types
  variable      = "#333333",  -- Dark gray for variables
  decorator     = "#B58900",  -- Paper yellow for decorators
  red           = "#CC3E28",  -- Paper red
  yellow        = "#B58900",  -- Paper yellow for warnings
  cyan          = "#158c86",  -- Paper cyan
  purple        = "#5C21A5",  -- Paper purple

  -- UI tints based on Paper highlight colors
  ui_bg         = "#D8D5C7",  -- Paper highlight background
  ui_bg_alt     = "#E8E5D7",  -- Lighter variant
  cursorline    = "#D8D5C7",  -- Paper highlight color for cursor line
  visual        = "#D8D5C7",  -- Paper highlight color for selection
  border        = "#AAAAAA",  -- Paper white (bright) for borders
}

return palette

