-- Summer variant - extends dawn with modifications  
local dawn = require("toronto.colors.dawn")

local palette = vim.tbl_deep_extend("force", dawn, {
  -- Summer-specific color adjustments while keeping the light base
})

return palette