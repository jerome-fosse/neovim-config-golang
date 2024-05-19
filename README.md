```
$$\   $$\                                                      $$$$$$\                     
$$$\  $$ |                                                    $$  __$$\                    
$$$$\ $$ | $$$$$$\   $$$$$$\ $$\    $$\ $$\ $$$$$$\$$$$\      $$ /  \__|$$$$$$\   $$$$$$\  
$$ $$\$$ |$$  __$$\ $$  __$$\\$$\  $$  |$$ |$$  _$$  _$$\     $$$$\    $$  __$$\ $$  __$$\ 
$$ \$$$$ |$$$$$$$$ |$$ /  $$ |\$$\$$  / $$ |$$ / $$ / $$ |    $$  _|   $$ /  $$ |$$ |  \__|
$$ |\$$$ |$$   ____|$$ |  $$ | \$$$  /  $$ |$$ | $$ | $$ |    $$ |     $$ |  $$ |$$ |      
$$ | \$$ |\$$$$$$$\ \$$$$$$  |  \$  /   $$ |$$ | $$ | $$ |    $$ |     \$$$$$$  |$$ |      
\__|  \__| \_______| \______/    \_/    \__|\__| \__| \__|    \__|      \______/ \__|      
                                                                                          
       $$$$$$\                      $$\                                                      
      $$  __$$\                     $$ |                                                     
      $$ /  \__| $$$$$$\   $$$$$$\  $$$$$$$\   $$$$$$\   $$$$$$\   $$$$$$$\                  
      $$ |$$$$\ $$  __$$\ $$  __$$\ $$  __$$\ $$  __$$\ $$  __$$\ $$  _____|                 
      $$ |\_$$ |$$ /  $$ |$$ /  $$ |$$ |  $$ |$$$$$$$$ |$$ |  \__|\$$$$$$\                   
      $$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |  $$ |$$   ____|$$ |       \____$$\                  
      \$$$$$$  |\$$$$$$  |$$$$$$$  |$$ |  $$ |\$$$$$$$\ $$ |      $$$$$$$  |                 
       \______/  \______/ $$  ____/ \__|  \__| \_______|\__|      \_______/                  
                          $$ |                                                               
                          $$ |                                                               
                          \__|                                                               
```


# My Neovim configuration

As a goland developer I use Neovim as my daily code editor. It's fast, it's lightweight, it's highly configurable. It has everything I want from a code editor and nothing more.

I wanted to share my configuration because configuring Neovim can be very time consuming. In fact I spent a lot of time doing it and to be honest it is still, and probably always will be, a work in progress. So feel free to take it, use it, upgrade it and share any improvement you might add to it.

If you prefer or don't have much time to spend on configuring Neovim, you night want to take a look at a Neovim distribution like [NvChad](https://nvchad.com/) or [LunarVim](https://www.lunarvim.org/). They are good alternatives if you're looking something that comes out of the box.

## Prerequisites
This configuration has been tested and works with Neovim `0.10.0`. It could work also with Neovim `0.9.x` or should be working with a few modifications.

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
