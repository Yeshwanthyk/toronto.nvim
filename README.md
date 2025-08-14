# toronto.nvim

Self‑contained Neovim colorscheme with multiple variants.

## Install (LazyVim / lazy.nvim)

```lua
{
  "Yeshwanthyk/toronto.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("toronto").load("dusk") -- or: dawn | spring | summer
  end,
}
```

Or use `:colorscheme toronto-dusk` (entrypoints are provided).

## Variants
- toronto-dusk (dark)
- toronto-spring (dark)
- toronto-dawn (light)
- toronto-summer (light)

## Programmatic usage
```lua
require("toronto").load("dusk", {
  defaults = { transparent = false },
  overrides = { PmenuSel = { bold = true } },
})
```
