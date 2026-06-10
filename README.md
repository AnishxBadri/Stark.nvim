# 🌑 Stark

A minimal dark Neovim colorscheme with a deep black background, off-white foreground, and mint + amber + sky accents.

## ✨ Features

- Supports the latest Neovim 0.9.0+ features
- Enhances terminal colors
- Tree-sitter and semantic token support
- LSP diagnostics, references, and inlay hints
- Plugin support gated per-plugin (toggle on/off)
- Lualine theme included
- Ghostty terminal config included in `extras/`

## 🎨 Palette

| Key         | Hex       | Role                              |
|-------------|-----------|-----------------------------------|
| `bg`        | `#0d0d0d` | editor canvas                     |
| `fg`        | `#d4d4d4` | normal text                       |
| `fg_bright` | `#ead8b6` | emphasized text, bold keywords    |
| `mint`      | `#00CF9C` | strings, additions, success       |
| `amber`     | `#f59e0b` | types, warnings, numbers          |
| `sky`       | `#38bdf8` | decorators, attributes, links     |
| `red`       | `#f5425d` | errors, deletions, exceptions     |
| `rose`      | `#fb7185` | parameters, self/this             |
| `teal`      | `#5eead4` | regex, escapes, special chars     |

Use these keys in `on_colors` / `on_highlights` to override. Full palette in [`lua/stark/palette.lua`](./lua/stark/palette.lua).

## ⚡️ Requirements

- Neovim >= 0.9.0

## 📦 Installation

Install with your preferred package manager:

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "AnishxBadri/stark.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("stark").setup({})
    vim.cmd.colorscheme("stark")
  end,
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use({
  "AnishxBadri/stark.nvim",
  config = function()
    require("stark").setup({})
    vim.cmd.colorscheme("stark")
  end,
})
```

> Declare stark first in your `packer.startup` block so highlight groups exist before dependent plugins (lualine, etc.) load.

## 🚀 Usage

The install snippet above activates the colorscheme on startup. To enable manually elsewhere:

```lua
-- Vim Script
vim.cmd[[colorscheme stark]]

-- Lua
vim.cmd.colorscheme("stark")
```

### Lualine

```lua
require("lualine").setup({
  options = { theme = "stark" },
})
```

## ⚙️ Configuration

> Call `require("stark").setup({...})` **before** `vim.cmd.colorscheme("stark")`. The install snippet above already orders them correctly.

Stark comes with the following defaults:

```lua
{
  transparent = false,        -- enable transparent background
  italic_comments = true,     -- italicize comments
  italic_imports = true,      -- italicize imports
  bold_keywords = true,       -- bold keywords (uses fg_bright, no hue)
  on_colors = function(colors) end,
  on_highlights = function(highlights, colors) end,
  plugins = {
    telescope = true,
    snacks = true,
    ["neo-tree"] = true,
    cmp = true,
    gitsigns = true,
    lazy = true,
    mini = true,
    whichkey = true,
    notify = true,
    indent = true,
  },
}
```

### Plugin Support

Each plugin highlight group is gated. Disable plugins you don't use:

```lua
require("stark").setup({
  plugins = {
    telescope = false,
    ["neo-tree"] = false,
  },
})
```

### Overriding Colors & Highlights

Override palette colors:

```lua
require("stark").setup({
  on_colors = function(colors)
    colors.bg = "#000000"
    colors.mint = "#10dba9"
  end,
})
```

Override highlight groups:

```lua
require("stark").setup({
  on_highlights = function(hl, c)
    hl.Comment = { fg = c.fg_dim, italic = true }
    hl["@variable"] = { fg = c.fg }
  end,
})
```

## 🖥️ Extras

Ports for terminals and other tools live in [`extras/`](./extras):

- **Ghostty** — `extras/ghostty/stark`

More ports (iTerm, Alacritty, Kitty) planned.

## 📂 Structure

```
stark.nvim/
├── colors/
│   └── stark.lua              ← :colorscheme stark entry
├── extras/
│   └── ghostty/stark          ← terminal configs
└── lua/
    ├── stark/
    │   ├── init.lua           ← public API (setup, load)
    │   ├── config.lua         ← defaults + extend
    │   ├── palette.lua        ← raw hex table
    │   ├── theme.lua          ← driver
    │   └── groups/            ← highlight groups
    │       ├── editor.lua
    │       ├── syntax.lua
    │       ├── treesitter.lua
    │       ├── lsp.lua
    │       ├── markdown.lua
    │       └── plugins/       ← per-plugin, gated by cfg.plugins
    └── lualine/themes/stark.lua
```

## 📝 License

MIT — see [LICENSE](./LICENSE).
