-- Spring variant - extends dusk with modifications
local dusk = require("toronto.colors.dusk")

local palette = vim.tbl_deep_extend("force", dusk, {
  -- Spring-specific color adjustments while keeping the dark base
})

return palette