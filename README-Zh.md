# Four Symbols Neovim Themes

Experience the essence of the ancient Chinese mythology with our Four Symbols themes for Neovim. Each theme represents one of the mythical creatures, embodying the spirit of the cardinal directions and seasons.

- **Azure Dragon**: Symbolizes the East and spring, representing vitality and growth with hues of green, cyan, and blue.
- **White Tiger**: Symbolizes the West and autumn, representing strength and elegance with shades of white and metallic colors.
- **Vermilion Bird**: Symbolizes the South and summer, representing passion and energy with vibrant reds and warm tones.
- **Black Tortoise**: Symbolizes the North and winter, representing wisdom and stability with deep blacks and cool blues.

<p align="center">
  <!-- Logo 占位符 -->
</p>

# Four Symbols Neovim 主题

**Four Symbols** 是一组基于中国古代神话中四大神兽——青龙、白虎、朱雀和玄武——的 Neovim 主题。每个主题都代表了一个方位、季节和元素，旨在为您的编辑器带来独特的视觉体验。

## 目录

- [简介](#简介)
- [特性](#特性)
- [安装](#安装)
- [使用方法](#使用方法)
- [主题预览](#主题预览)
  - [青龙（Azure Dragon）](#青龙azure-dragon)
  - [白虎（White Tiger）](#白虎white-tiger)
  - [朱雀（Vermilion Bird）](#朱雀vermilion-bird)
  - [玄武（Black Tortoise）](#玄武black-tortoise)
- [配置选项](#配置选项)
- [致谢](#致谢)

## 简介

**Four Symbols** 主题系列以中国古代神话中的四象为灵感，每个主题都结合了对应神兽的颜色和象征意义：

- **青龙（Azure Dragon）**：象征东方和春天，代表生机与活力，主题色调以绿色、青色和蓝色为主。
- **白虎（White Tiger）**：象征西方和秋天，代表力量与威严，主题色调以白色、灰色和金属色为主。
- **朱雀（Vermilion Bird）**：象征南方和夏天，代表热情与活力，主题色调以红色、橙色和金色为主。
- **玄武（Black Tortoise）**：象征北方和冬天，代表稳重与智慧，主题色调以黑色、深蓝色和青色为主。

## 特性

- **多主题选择**：四种不同的主题风格。
- **高可定制性**：支持多种配置选项，满足个性化需求。
- **广泛的插件支持**：兼容主流 Neovim 插件，如 Treesitter、LSP 等。
- **精心设计的配色**：每个主题都经过细致的调校，确保良好的可读性和美观性。

## 安装

### 使用插件管理器

推荐使用 [packer.nvim](https://github.com/wbthomason/packer.nvim) 或 [vim-plug](https://github.com/junegunn/vim-plug) 等插件管理器进行安装。

#### 使用 packer.nvim

```lua
use 'your_username/four-symbols.nvim'
```

#### 使用 vim-plug

```vim
Plug 'your_username/four-symbols.nvim'
```

## 使用方法

在安装完成后，在您的 Neovim 配置文件中添加以下内容：

```lua
-- 选择您喜欢的主题
require('four-symbols').setup({
  theme = 'azure_dragon',  -- 可选值：'azure_dragon', 'white_tiger', 'vermilion_bird', 'black_tortoise'
  transparent = false,     -- 是否启用透明背景
  dim_inactive = false,    -- 是否使非活动窗口背景变暗
  -- 其他可选配置
})

-- 应用主题
vim.cmd('colorscheme four-symbols')
```

## 主题预览

### 青龙（Azure Dragon）

_（在此处添加青龙主题的截图或配色示例）_

### 白虎（White Tiger）

_（在此处添加白虎主题的截图或配色示例）_

### 朱雀（Vermilion Bird）

_（在此处添加朱雀主题的截图或配色示例）_

### 玄武（Black Tortoise）

_（在此处添加玄武主题的截图或配色示例）_

## 配置选项

您可以在 `setup` 函数中传入以下可选配置：

```lua
require('four-symbols').setup({
  theme = 'azure_dragon',  -- 选择主题
  transparent = false,     -- 是否启用透明背景
  dim_inactive = false,    -- 是否使非活动窗口背景变暗
  styles = {
    comments = { italic = true },      -- 注释样式
    keywords = { bold = true },        -- 关键字样式
    functions = { italic = true },     -- 函数名样式
    variables = {},                    -- 变量样式
  },
  -- 更多配置项
})
```

## 致谢

- 感谢所有为本项目提供建议和贡献的人。
- 特别感谢 Neovim 社区的支持和帮助。

---

