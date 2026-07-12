local cwd = vim.fn.getcwd()
package.path = cwd .. "/lua/?.lua;" .. cwd .. "/lua/?/init.lua;" .. package.path

local generated = require("toronto.extra").generate_all()

for tool, variants in pairs(generated) do
  print("Generated " .. tool .. " themes:")
  for variant, filepath in pairs(variants) do
    print("  " .. variant .. " -> " .. filepath)
  end
end
