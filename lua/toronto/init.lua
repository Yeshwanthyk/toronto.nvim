local config = require("toronto.config")

local M = {}
---@type {light?: string, dark?: string}
M.styles = {}

local function normalize_variant(name)
  if not name or name == '' then return 'dusk' end
  name = tostring(name)
  name = name:gsub('^toronto%-', '')
  local variants = { dawn = true, dusk = true, spring = true, summer = true }
  if variants[name] then return name end
  -- fallback
  return 'dusk'
end

---@param opts? toronto.Config
function M.load(opts)
  opts = require("toronto.config").extend(opts)
  local bg = vim.o.background
  local style_bg = (opts.style == "dawn" or opts.style == "summer") and "light" or "dark"

  if bg ~= style_bg then
    if vim.g.colors_name == "toronto-" .. opts.style then
      opts.style = bg == "light" and (M.styles.light or "dawn") or (M.styles.dark or "dusk")
    else
      vim.o.background = style_bg
    end
  end
  M.styles[vim.o.background] = opts.style
  return require("toronto.theme").setup(opts)
end

---Load and apply a Toronto variant by name
---@param name string one of: 'dawn' | 'dusk' | 'spring' | 'summer' (or 'toronto-*')
---@param user_opts table? user configuration options
function M.load_variant(name, user_opts)
  local variant = normalize_variant(name)
  local opts = vim.tbl_deep_extend("force", { style = variant }, user_opts or {})
  return M.load(opts)
end

M.setup = config.setup

return M

