local M = {}

local highlight = require('toronto.highlight')

local backgrounds = {
  dawn = 'light',
  summer = 'light',
  dusk = 'dark',
  spring = 'dark',
}

local function palette_for(variant)
  return require('toronto.palettes.toronto-' .. variant)
end

local function default_overrides(variant, palette)
  if variant == 'dusk' then
    return {
      Directory = { fg = palette.method },
      -- netrw
      netrwClassify = { fg = palette.method },
      netrwCmdSep   = { fg = palette.dim },
      netrwComment  = { fg = palette.comment },
      netrwDir      = { fg = palette.method },
      netrwExe      = { fg = palette.string },
      netrwHelpCmd  = { fg = palette.keyword },
      netrwLink     = { fg = palette.number },
      netrwList     = { fg = palette.fg },
      netrwSymLink  = { fg = palette.number },
      netrwVersion  = { fg = palette.dim },
      -- NvimTree tweak
      NvimTreeFolderName = { fg = palette.method },
    }
  elseif variant == 'spring' then
    return {
      DiffAdd     = { fg = palette.string },
      GitSignsAdd = { fg = palette.string },
    }
  elseif variant == 'summer' then
    return {
      -- Git/Diff accents use string green
      DiffAdd      = { fg = palette.string },
      GitSignsAdd  = { fg = palette.string },
      -- Selection/search/UI accents use fg to match palette
      IncSearch    = { fg = palette.fg, bg = palette.number, bold = true },
      Search       = { fg = palette.fg, bg = palette.yellow },
      Substitute   = { fg = palette.fg, bg = palette.method, bold = true },
      TabLineSel   = { fg = palette.fg, bg = palette.method, bold = true },
      PmenuSel     = { fg = palette.fg, bg = palette.method, bold = true },
      TelescopeSelection      = { fg = palette.fg, bg = palette.method, bold = true },
      TelescopeSelectionCaret = { fg = palette.fg, bg = palette.method },
      Todo         = { fg = palette.fg, bg = palette.yellow, bold = true },
    }
  else
    return {}
  end
end

local function normalize_variant(name)
  if not name or name == '' then return 'dusk' end
  name = tostring(name)
  name = name:gsub('^toronto%-', '')
  if backgrounds[name] then return name end
  -- fallback
  return 'dusk'
end

---Load and apply a Toronto variant without needing colors/ entrypoints.
---@param name string one of: 'dawn' | 'dusk' | 'spring' | 'summer' (or 'toronto-*')
---@param opts table? { defaults = {...}, overrides = {...} }
function M.load(name, opts)
  opts = opts or {}
  local variant = normalize_variant(name)
  local palette = palette_for(variant)
  local background = backgrounds[variant]

  -- merge overrides: default first, then user opts
  local overrides = default_overrides(variant, palette)
  if opts.overrides then
    for k, v in pairs(opts.overrides) do
      overrides[k] = v
    end
  end

  highlight.apply({
    name = 'toronto-' .. variant,
    background = background,
    palette = palette,
    defaults = opts.defaults or {},
    overrides = overrides,
  })
end

return M

