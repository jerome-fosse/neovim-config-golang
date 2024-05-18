# A Neovim configuration for a Golang developer

As a goland developer I use Neovim as my daily code editor. It's fast, it's lightweight, it's highly configurable. It has everything I want from a code editor and nothing more.

I wanted to share my configuration because configuring Neovim can be very time consuming. In fact I spent a lot of time doing it and to be honest it is still, and probably always will be, a work in progress. So feel free to take it, use it, upgrade it and share any improvement you might add to it.

If you prefer or don't have much time to spend on configuring Neovim, you night want to take a look at a Neovim distribution like [NvChad](https://nvchad.com/) or [LunarVim](https://www.lunarvim.org/). They are good alternatives if you're looking something that comes out of the box.

## Prerequisites
- Neovim `0.9.2`

## Plugins used
- Lazy
- nvim-tree
- nvim-web-dev-icons
- lualine
- bufferline
- nvim-notify
- themery
- telescope
- mini.move
- autopairs
- illuminate
- nvim-treesitter
- nvim-cmp
- nvim-lsp-config
- mason
- lsp-progress
- neotest
- symbols-outline
- gitsigns

## Installation

1. Remove (and backup if nescessary) any old Neovim configuration you might have in ~/.config/nvim

2. clone this repository
```shell
git clone https://github.com/jerome-fosse/neovim-config-golang ~/.config/nvim
```

3. Open Neovim
```shell
cd ~/.config/nvim
nvim .
```
Neovim will automatically download and install Lazy, the package manager, and all the plugins and lsp servers will be installed. This might take a few seconds.
