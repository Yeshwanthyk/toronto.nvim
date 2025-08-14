-- Direct theme generation
package.path = './lua/?.lua;./lua/?/init.lua;' .. package.path

local variants = { "dawn", "dusk", "spring", "summer" }
local tools = { "tmux", "fzf", "delta", "alacritty" }

for _, tool in ipairs(tools) do
  for _, variant in ipairs(variants) do
    -- Setup config
    local config = require('toronto.config')
    config.setup({ style = variant })
    
    -- Get colors
    local colors = require('toronto.colors').setup(config.extend())
    
    -- Get template  
    local template = require('toronto.extra.' .. tool)
    local content = template.generate(colors, variant)
    
    -- File extension
    local exts = { tmux = "tmux", fzf = "sh", delta = "gitconfig", alacritty = "toml" }
    local filename = "toronto_" .. variant .. "." .. exts[tool]
    
    -- Ensure directory exists
    os.execute("mkdir -p extras/" .. tool)
    
    -- Write file
    local file = io.open("extras/" .. tool .. "/" .. filename, "w")
    if file then
      file:write(content)
      file:close()
      print("Generated: extras/" .. tool .. "/" .. filename)
    else
      print("Failed to write: extras/" .. tool .. "/" .. filename)
    end
  end
end

print("Theme generation complete!")