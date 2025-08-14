local Config = require("toronto.config")

local M = {}

-- stylua: ignore
M.plugins = {
  ["telescope.nvim"]        = "telescope",
  ["nvim-tree.lua"]         = "nvim-tree", 
  ["gitsigns.nvim"]         = "gitsigns",
  ["snacks.nvim"]           = "snacks",
  ["nvim-cmp"]              = "cmp",
  ["flash.nvim"]            = "flash",
  ["lazy.nvim"]             = "lazy",
  ["noice.nvim"]            = "noice",
  ["which-key.nvim"]        = "which-key",
}

---@param colors ColorScheme
---@param opts toronto.Config
function M.setup(colors, opts)
  local groups = {}

  -- Always include base groups
  groups = vim.tbl_extend("force", groups, require("toronto.groups.base").get(colors, opts))
  groups = vim.tbl_extend("force", groups, require("toronto.groups.syntax").get(colors, opts))
  groups = vim.tbl_extend("force", groups, require("toronto.groups.treesitter").get(colors, opts))

  -- Plugin groups
  for plugin, group_name in pairs(M.plugins) do
    if opts.plugins.all or opts.plugins[plugin] then
      local ok, plugin_groups = pcall(require, "toronto.groups." .. group_name)
      if ok then
        groups = vim.tbl_extend("force", groups, plugin_groups.get(colors, opts))
      end
    end
  end

  -- Auto-detect plugins if enabled
  if opts.plugins.auto then
    for plugin, group_name in pairs(M.plugins) do
      if package.loaded[plugin] or 
         vim.fn.exists(":Telescope") == 2 or 
         vim.fn.exists(":NvimTreeToggle") == 2 or
         vim.fn.exists(":Lazy") == 2 or
         vim.fn.exists(":Noice") == 2 or
         vim.fn.exists(":WhichKey") == 2 then
        local ok, plugin_groups = pcall(require, "toronto.groups." .. group_name)
        if ok then
          groups = vim.tbl_extend("force", groups, plugin_groups.get(colors, opts))
        end
      end
    end
  end

  -- Apply user overrides
  opts.on_highlights(groups, colors)

  return groups
end

return M