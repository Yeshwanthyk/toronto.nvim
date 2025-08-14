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

---Get variant-specific highlight overrides
---@param variant string
---@param colors ColorScheme
function M.get_variant_overrides(variant, colors)
  if variant == 'spring' then
    return {
      DiffAdd     = { fg = colors.string },
      GitSignsAdd = { fg = colors.string },
    }
  elseif variant == 'summer' then
    return {
      -- Git/Diff accents use string green
      DiffAdd      = { fg = colors.string },
      GitSignsAdd  = { fg = colors.string },
      -- Selection/search/UI accents use fg to match palette
      IncSearch    = { fg = colors.fg, bg = colors.number, bold = true },
      Search       = { fg = colors.fg, bg = colors.yellow },
      Substitute   = { fg = colors.fg, bg = colors.method, bold = true },
      TabLineSel   = { fg = colors.fg, bg = colors.method, bold = true },
      PmenuSel     = { fg = colors.fg, bg = colors.method, bold = true },
      TelescopeSelection      = { fg = colors.fg, bg = colors.method, bold = true },
      TelescopeSelectionCaret = { fg = colors.fg, bg = colors.method },
      Todo         = { fg = colors.fg, bg = colors.yellow, bold = true },
    }
  elseif variant == 'dusk' then
    return {
      Directory = { fg = colors.method },
      -- netrw
      netrwClassify = { fg = colors.method },
      netrwCmdSep   = { fg = colors.dim },
      netrwComment  = { fg = colors.comment },
      netrwDir      = { fg = colors.method },
      netrwExe      = { fg = colors.string },
      netrwHelpCmd  = { fg = colors.keyword },
      netrwLink     = { fg = colors.number },
      netrwList     = { fg = colors.fg },
      netrwSymLink  = { fg = colors.number },
      netrwVersion  = { fg = colors.dim },
      -- NvimTree tweak
      NvimTreeFolderName = { fg = colors.method },
    }
  else
    return {}
  end
end

---@param opts? toronto.Config
function M.setup(opts)
  opts = require("toronto.config").extend(opts)

  local colors = require("toronto.colors").setup(opts)
  local groups = require("toronto.groups").setup(colors, opts)
  
  -- Apply variant-specific overrides
  local variant_overrides = M.get_variant_overrides(opts.style, colors)
  groups = vim.tbl_extend("force", groups, variant_overrides)

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