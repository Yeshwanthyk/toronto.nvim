local M = {}

-- map of tool name to tool extension
--- @type table<string, {ext:string, url:string, label:string, subdir?: string}>
M.extras = {
  tmux     = { ext = "tmux", url = "https://github.com/tmux/tmux", label = "Tmux" },
  fzf      = { ext = "sh", url = "https://github.com/junegunn/fzf", label = "Fzf" },
  delta    = { ext = "gitconfig", url = "https://github.com/dandavison/delta", label = "Delta" },
  alacritty = { ext = "toml", url = "https://github.com/alacritty/alacritty", label = "Alacritty" },
}

-- Get the template for a specific tool
function M.get_template(tool)
  local ok, template = pcall(require, "toronto.extra." .. tool)
  if not ok then
    error("Template for " .. tool .. " not found")
  end
  return template
end

-- Generate theme files for all tools and variants
function M.generate_all()
  local variants = { "dawn", "dusk", "spring", "summer" }
  local generated = {}

  for tool, info in pairs(M.extras) do
    generated[tool] = {}
    local template = M.get_template(tool)
    
    for _, variant in ipairs(variants) do
      local config = require("toronto.config")
      config.setup({ style = variant })
      local colors = require("toronto.colors").setup(config.extend())
      local content = template.generate(colors, variant)
      local filename = "toronto_" .. variant .. "." .. info.ext
      
      -- Write to extras directory
      local filepath = vim.fn.getcwd() .. "/extras/" .. tool .. "/" .. filename
      vim.fn.mkdir(vim.fn.fnamemodify(filepath, ":h"), "p")
      
      local file = io.open(filepath, "w")
      if file then
        file:write(content)
        file:close()
        generated[tool][variant] = filepath
      end
    end
  end

  return generated
end

return M