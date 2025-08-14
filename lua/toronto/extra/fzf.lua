local M = {}

function M.generate(colors, variant)
  local template = [[
#!/bin/bash
# Toronto %s theme for FZF
# https://github.com/your-username/toronto.nvim

export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --color=fg:%s,bg:%s,hl:%s \
  --color=fg+:%s,bg+:%s,hl+:%s \
  --color=info:%s,prompt:%s,pointer:%s \
  --color=marker:%s,spinner:%s,header:%s \
  --color=border:%s"
]]

  local theme_name = variant:gsub("^%l", string.upper)
  
  return template:format(
    theme_name,
    colors.fg:sub(2),           -- fg (remove #)
    colors.bg:sub(2),           -- bg
    colors.method:sub(2),       -- hl (highlight)
    colors.fg:sub(2),           -- fg+ (current line fg)
    colors.cursorline:sub(2),   -- bg+ (current line bg)
    colors.method:sub(2),       -- hl+ (current line highlight)
    colors.number:sub(2),       -- info
    colors.method:sub(2),       -- prompt
    colors.method:sub(2),       -- pointer
    colors.yellow:sub(2),       -- marker
    colors.dim:sub(2),          -- spinner
    colors.comment:sub(2),      -- header
    colors.border:sub(2)        -- border
  )
end

return M