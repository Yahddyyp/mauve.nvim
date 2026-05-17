# Mauve.nvim

![preview](assets/preview.png)

<p align="center"><b>A dark and colourful theme for neovim with the catppuccin mocha palette.</b></p>

## Installation

Install with your favorite plugin manager:

[lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "yahddyyp/mauve.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("mauve-nvim").setup()
  end,
}
```

[packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "yahddyyp/mauve.nvim",
  config = function()
    require("mauve-nvim").setup()
  end,
}
```

[vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'yahddyyp/mauve.nvim'
```

## Usage

To make `mauve` your default colorscheme, add the following line to your `init.lua` after you have set up the plugin:

```lua
vim.cmd("colorscheme mauve")
```

This will apply the colorscheme every time you start Neovim.

## Supported Plugins

*   [Telescope](https://github.com/nvim-telescope/telescope.nvim)
*   [BlinkCmp](https://github.com/uga-rosa/blink.nvim)
*   [Fidget](https://github.com/j-hui/fidget.nvim)
*   [Snacks](https://github.com/sontungexpt/snacks.nvim)
*   [Tree-sitter](https://github.com/nvim-treesitter/nvim-treesitter)
*   [Noice.nvim](https://github.com/folke/noice.nvim)
*   [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
*   [Lualine](https://github.com/nvim-lualine/lualine.nvim)

## Lualine

Add this to your lualine config as i cant figure out how to get lualine to switch automatically. 

```lua
require('lualine').setup {
  options = {
    -- ... your other lualine options
    theme = require('mauve-nvim.integrations.lualine')
  }
}
```

## Special Thanks

*  [Catppuccin](https://github.com/catppuccin/catppuccin) for making me fall in love with these colors.

<p align="center"><img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" /></p>

<p align="center"><a href="https://github.com/yahddyyp/mauve.nvim/blob/main/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=cdd6f4&colorA=1e1e2e&colorB=cba6f7"/></a></p>
