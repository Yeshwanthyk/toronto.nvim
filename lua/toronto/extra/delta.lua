local M = {}

function M.generate(colors, variant)
  local template = [[
# Toronto %s theme for Delta
# https://github.com/your-username/toronto.nvim
# Add this to your .gitconfig in [delta] section or include this file

[delta "toronto-%s"]
    # General
    dark = %s
    syntax-theme = none
    
    # Colors
    minus-style = "%s"
    minus-emph-style = "%s bold"
    minus-non-emph-style = "%s"
    plus-style = "%s" 
    plus-emph-style = "%s bold"
    plus-non-emph-style = "%s"
    
    # Line numbers
    line-numbers = true
    line-numbers-left-style = "%s"
    line-numbers-right-style = "%s"
    line-numbers-minus-style = "%s"
    line-numbers-plus-style = "%s"
    line-numbers-zero-style = "%s"
    
    # File headers  
    file-style = "%s bold"
    file-decoration-style = "%s ul"
    
    # Hunk headers
    hunk-header-style = "%s bold"
    hunk-header-decoration-style = "%s ul"
    
    # Commit style
    commit-style = "%s bold"
    commit-decoration-style = "none"
]]

  local theme_name = variant:gsub("^%l", string.upper)
  local is_dark = variant == "dusk" or variant == "spring"
  
  return template:format(
    theme_name,
    variant,
    tostring(is_dark),
    colors.red,              -- minus-style
    colors.red,              -- minus-emph-style  
    colors.red,              -- minus-non-emph-style
    colors.method,           -- plus-style
    colors.method,           -- plus-emph-style
    colors.method,           -- plus-non-emph-style
    colors.dim,              -- line-numbers-left-style
    colors.dim,              -- line-numbers-right-style
    colors.red,              -- line-numbers-minus-style
    colors.method,           -- line-numbers-plus-style
    colors.dim,              -- line-numbers-zero-style
    colors.fg,               -- file-style
    colors.method,           -- file-decoration-style
    colors.method,           -- hunk-header-style
    colors.method,           -- hunk-header-decoration-style
    colors.yellow            -- commit-style
  )
end

return M