# toronto.nvim

A modular Neovim colorscheme with multiple variants and external tool support.

## ✨ Features

- **4 beautiful variants**: Dark (dusk, spring) and light (dawn, summer) themes
- **Modular architecture**: Clean separation of concerns for easy customization
- **External tool support**: Tmux, FZF, Delta, and Alacritty themes included
- **Plugin integration**: Auto-detection for Telescope, NvimTree, GitSigns, and more
- **Highly configurable**: User callbacks, style options, and transparency support

## 📦 Installation

### LazyVim / lazy.nvim

```lua
{
  "Yeshwanthyk/toronto.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("toronto").setup({
      style = "dusk", -- or: dawn | spring | summer
      transparent = false,
      styles = {
        comments = { italic = true },
        keywords = { bold = false },
        functions = { bold = true },
      },
    })
    require("toronto").load()
  end,
}
```

### Traditional vim-plug

```vim
Plug 'Yeshwanthyk/toronto.nvim'
```

## 🎨 Variants

| Variant | Background | Description |
|---------|------------|-------------|
| `dusk` | Dark | Deep blacks with vibrant accents |
| `spring` | Dark | Based on dusk with variant-specific tweaks |
| `dawn` | Light | Clean whites with readable contrasts |
| `summer` | Light | Based on dawn with variant-specific tweaks |

## 🚀 Usage

### Basic Usage

```lua
-- Load directly
require("toronto").load_variant("dusk")

-- Or use colorscheme command
vim.cmd("colorscheme toronto-dusk")
```

### Advanced Configuration

```lua
require("toronto").setup({
  style = "dusk",
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = { bold = false },
    functions = { bold = true },
    variables = {},
    sidebars = "dark", -- or "transparent" or "normal"
    floats = "dark",
  },
  dim_inactive = false,
  
  -- Customize colors
  on_colors = function(colors)
    colors.error = "#ff0000"
  end,
  
  -- Customize highlights  
  on_highlights = function(highlights, colors)
    highlights.Comment = { fg = colors.dim, italic = true }
  end,
  
  -- Plugin support
  plugins = {
    all = true, -- enable all plugins
    -- or manually specify:
    ["telescope.nvim"] = true,
    ["nvim-tree.lua"] = true,
  }
})

require("toronto").load()
```

## 🔧 External Tools

Toronto.nvim includes themes for popular external tools. Generate them with:

```bash
# Generate all themes
./scripts/build
```

### Tmux

```bash
# Add to your .tmux.conf
source-file path/to/toronto.nvim/extras/tmux/toronto_dusk.tmux
```

### FZF

```bash
# Add to your shell rc file (.bashrc, .zshrc, etc.)
source path/to/toronto.nvim/extras/fzf/toronto_dusk.sh
```

### Delta (Git diff)

```gitconfig
# Add to your .gitconfig
[include]
    path = path/to/toronto.nvim/extras/delta/toronto_dusk.gitconfig

[delta]
    features = toronto-dusk
```

### Alacritty

```toml
# Add to your alacritty.toml
import = ["path/to/toronto.nvim/extras/alacritty/toronto_dusk.toml"]
```

## 🏗️ Architecture

```
lua/toronto/
├── colors/           # Color definitions with inheritance
├── groups/           # Modular highlight groups
├── extra/            # External tool theme generators
├── config.lua        # Configuration system
├── theme.lua         # Theme application engine
└── util.lua          # Color utilities and blending
```

## 🎯 Plugin Support

Auto-detected plugins:
- Telescope
- NvimTree
- GitSigns
- And more...

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Run tests: `./scripts/build` 
5. Submit a pull request

## 📄 License

MIT License - see LICENSE file for details.
