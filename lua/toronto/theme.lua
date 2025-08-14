local M = {}

---@param colors ColorScheme
function M.set_terminal_colors(colors)
  vim.g.terminal_color_0  = colors.terminal.black
  vim.g.terminal_color_1  = colors.terminal.red
  vim.g.terminal_color_2  = colors.terminal.green
  vim.g.terminal_color_3  = colors.terminal.yellow
  vim.g.terminal_color_4  = colors.terminal.blue
  vim.g.terminal_color_5  = colors.terminal.magenta
  vim.g.terminal_color_6  = colors.terminal.cyan
  vim.g.terminal_color_7  = colors.terminal.white
  vim.g.terminal_color_8  = colors.terminal.black_bright
  vim.g.terminal_color_9  = colors.terminal.red_bright
  vim.g.terminal_color_10 = colors.terminal.green_bright
  vim.g.terminal_color_11 = colors.terminal.yellow_bright
  vim.g.terminal_color_12 = colors.terminal.blue_bright
  vim.g.terminal_color_13 = colors.terminal.magenta_bright
  vim.g.terminal_color_14 = colors.terminal.cyan_bright
  vim.g.terminal_color_15 = colors.terminal.white_bright
end

---@param opts? toronto.Config
function M.setup(opts)
  opts = require("toronto.config").extend(opts)

  local colors = require("toronto.colors").setup(opts)
  local groups = require("toronto.groups").setup(colors, opts)

  -- only needed to clear when not the default colorscheme
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  if vim.g.syntax_on == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "toronto-" .. opts.style

  -- Set background
  local backgrounds = {
    dawn = 'light',
    summer = 'light',
    dusk = 'dark',
    spring = 'dark',
  }
  vim.o.background = backgrounds[opts.style] or 'dark'

  -- Apply highlights
  for group, hl in pairs(groups) do
    hl = type(hl) == "string" and { link = hl } or hl
    vim.api.nvim_set_hl(0, group, hl)
  end

  if opts.terminal_colors then
    M.set_terminal_colors(colors)
  end

  return colors, groups, opts
end

return M