<p align="center">
  <!-- Logo Placeholder -->
</p>

# Four Symbols Neovim Theme

**Four Symbols** is a collection of Neovim themes inspired by the four mythical creatures from ancient Chinese mythology: Azure Dragon, White Tiger, Vermilion Bird, and Black Tortoise. Each theme represents a direction, season, and element, aiming to bring a unique visual experience to your editor.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Theme Preview](#theme-preview)
  - [Azure Dragon](#azure-dragon)
  - [White Tiger](#white-tiger)
  - [Vermilion Bird](#vermilion-bird)
  - [Black Tortoise](#black-tortoise)
- [Configuration Options](#configuration-options)
- [Acknowledgements](#acknowledgements)

## Introduction

The **Four Symbols** theme series is inspired by the Four Symbols in ancient Chinese mythology. Each theme combines the colors and symbolism of its corresponding mythical creature:

- **Azure Dragon**: Symbolizes the East and spring, representing vitality and growth. The theme features colors primarily in green, cyan, and blue hues.
- **White Tiger**: Symbolizes the West and autumn, representing strength and majesty. The theme features colors primarily in white, gray, and metallic hues.
- **Vermilion Bird**: Symbolizes the South and summer, representing passion and energy. The theme features colors primarily in red, orange, and gold hues.
- **Black Tortoise**: Symbolizes the North and winter, representing stability and wisdom. The theme features colors primarily in black, deep blue, and cyan hues.

## Features

- **Multiple Theme Choices**: Switch between different theme styles according to your preference and mood.
- **Highly Customizable**: Supports various configuration options to meet personalized needs.
- **Extensive Plugin Support**: Compatible with mainstream Neovim plugins like Treesitter, LSP, and more.
- **Carefully Designed Color Schemes**: Each theme is finely tuned to ensure good readability and aesthetics.

## Installation

### Using a Plugin Manager

It's recommended to use a plugin manager like [packer.nvim](https://github.com/wbthomason/packer.nvim) or [vim-plug](https://github.com/junegunn/vim-plug) for installation.

#### Using packer.nvim

```lua
use 'your_username/four-symbols.nvim'
```

#### Using vim-plug

```vim
Plug 'your_username/four-symbols.nvim'
```

## Usage

After installation, add the following to your Neovim configuration file:

```lua
-- Choose your preferred theme
require('four-symbols').setup({
  theme = 'azure_dragon',  -- Options: 'azure_dragon', 'white_tiger', 'vermilion_bird', 'black_tortoise'
  transparent = false,     -- Enable transparent background
  dim_inactive = false,    -- Dim inactive window backgrounds
  -- Other optional configurations
})

-- Apply the theme
vim.cmd('colorscheme four-symbols')
```

## Theme Preview

### Azure Dragon

_(Add screenshots or color scheme examples of the Azure Dragon theme here)_

### White Tiger

_(Add screenshots or color scheme examples of the White Tiger theme here)_

### Vermilion Bird

_(Add screenshots or color scheme examples of the Vermilion Bird theme here)_

### Black Tortoise

_(Add screenshots or color scheme examples of the Black Tortoise theme here)_

## Configuration Options

You can pass the following optional configurations in the `setup` function:

```lua
require('four-symbols').setup({
  theme = 'azure_dragon',  -- Choose theme
  transparent = false,     -- Enable transparent background
  dim_inactive = false,    -- Dim inactive window backgrounds
  styles = {
    comments = { italic = true },      -- Style for comments
    keywords = { bold = true },        -- Style for keywords
    functions = { italic = true },     -- Style for function names
    variables = {},                    -- Style for variables
  },
  -- More configuration options
})
```

## Acknowledgements

- Thanks to everyone who has provided suggestions and contributions to this project.
- Special thanks to the Neovim community for their support and assistance.

---

_Note: In the above README, please replace `your_username` with your actual GitHub username._

