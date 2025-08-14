local M = {}

---@class toronto.Config
M.defaults = {
  style = "dusk", -- The theme comes in four styles: 'dawn', 'dusk', 'spring', 'summer'
  light_style = "dawn", -- The theme is used when the background is set to light
  transparent = false, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  styles = {
    -- Style to be applied to different syntax groups
    comments = { italic = true },
    keywords = { bold = false },
    functions = { bold = true },
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "dark", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
  dim_inactive = false, -- dims inactive windows
  
  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  ---@param colors ColorScheme
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  ---@param highlights toronto.Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,

  ---@type table<string, boolean|{enabled:boolean}>
  plugins = {
    -- enable all plugins when not using lazy.nvim
    -- set to false to manually enable/disable plugins
    all = package.loaded.lazy == nil,
    -- uses your plugin manager to automatically enable needed plugins
    -- currently only lazy.nvim is supported
    auto = true,
  },
}

---@type toronto.Config
M.options = {}

---@param options? toronto.Config
function M.setup(options)
  M.options = vim.tbl_deep_extend("force", M.defaults, options or {})
end

---@param options? toronto.Config
function M.extend(options)
  return vim.tbl_deep_extend("force", M.options, options or {})
end

return M