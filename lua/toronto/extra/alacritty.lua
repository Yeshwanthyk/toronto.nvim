local M = {}

function M.generate(colors, variant)
  local template = [[
# Toronto %s theme for Alacritty
# https://github.com/your-username/toronto.nvim

[colors.primary]
background = "%s"
foreground = "%s"
dim_foreground = "%s"

[colors.cursor]
text = "%s"
cursor = "%s"

[colors.vi_mode_cursor]
text = "%s"
cursor = "%s"

[colors.selection]
text = "CellForeground"
background = "%s"

[colors.search.matches]
foreground = "%s"
background = "%s"

[colors.search.focused_match]
foreground = "%s"
background = "%s"

[colors.line_indicator]
foreground = "None"
background = "None"

[colors.footer_bar]
foreground = "%s"
background = "%s"

[colors.normal]
black = "%s"
red = "%s"
green = "%s"
yellow = "%s"
blue = "%s"
magenta = "%s"
cyan = "%s"
white = "%s"

[colors.bright]
black = "%s"
red = "%s"
green = "%s"
yellow = "%s"
blue = "%s"
magenta = "%s"
cyan = "%s"
white = "%s"
]]

  local theme_name = variant:gsub("^%l", string.upper)
  
  return template:format(
    theme_name,
    colors.bg,                      -- background
    colors.fg,                      -- foreground
    colors.dim,                     -- dim_foreground
    colors.bg,                      -- cursor text
    colors.fg,                      -- cursor
    colors.bg,                      -- vi_mode_cursor text
    colors.yellow,                  -- vi_mode_cursor
    colors.visual,                  -- selection background
    colors.bg,                      -- search matches foreground
    colors.yellow,                  -- search matches background
    colors.bg,                      -- search focused_match foreground
    colors.method,                  -- search focused_match background
    colors.fg,                      -- footer_bar foreground
    colors.ui_bg,                   -- footer_bar background
    colors.terminal.black,          -- normal black
    colors.terminal.red,            -- normal red
    colors.terminal.green,          -- normal green
    colors.terminal.yellow,         -- normal yellow
    colors.terminal.blue,           -- normal blue
    colors.terminal.magenta,        -- normal magenta
    colors.terminal.cyan,           -- normal cyan
    colors.terminal.white,          -- normal white
    colors.terminal.black_bright,   -- bright black
    colors.terminal.red_bright,     -- bright red
    colors.terminal.green_bright,   -- bright green
    colors.terminal.yellow_bright,  -- bright yellow
    colors.terminal.blue_bright,    -- bright blue
    colors.terminal.magenta_bright, -- bright magenta
    colors.terminal.cyan_bright,    -- bright cyan
    colors.terminal.white_bright    -- bright white
  )
end

return M