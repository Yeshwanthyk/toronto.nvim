# toronto.nvim

Neovim colorscheme with four variants and generated themes for external tools.

## Installation

### lazy.nvim

```lua
{
  "Yeshwanthyk/toronto.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("toronto").setup({
      style = "dusk", -- dawn | dusk | spring | summer
    })
    require("toronto").load()
  end,
}
```

### vim-plug

```vim
Plug 'Yeshwanthyk/toronto.nvim'
```

## Variants

| Variant | Background | Notes |
|---------|------------|-------|
| `dusk` | dark | near-black, warm, muted |
| `spring` | dark | cool, dim blue |
| `dawn` | light | warm off-white |
| `summer` | light | parchment, terracotta |

## Usage

```lua
require("toronto").load_variant("dusk")
```

or:

```vim
colorscheme toronto-dusk
```

## Configuration

```lua
require("toronto").setup({
  style = "dusk",
  transparent = false,
  terminal_colors = true,
  dim_inactive = false,
  styles = {
    comments = { italic = true },
    keywords = { bold = false },
    functions = { bold = true },
    variables = {},
    sidebars = "dark", -- dark | transparent | normal
    floats = "dark",
  },
  on_colors = function(colors) end,
  on_highlights = function(highlights, colors) end,
  plugins = {
    all = true,
    auto = true,
  },
})

require("toronto").load()
```

## External tools

Generate themes:

```bash
./scripts/build
```

Supported generators:

- Alacritty
- Delta
- FZF
- Tmux

## Layout

```text
lua/toronto/
├── colors/    # palettes
├── groups/    # highlight groups
├── extra/     # external tool generators
├── config.lua
├── theme.lua
└── util.lua
```

## License

MIT
