local status_ok, themery = pcall(require, "themery")
if not status_ok then
  return
end

themery.setup {
  themes = {
    "catppuccin-latte",
    "catppuccin-frappe",
    "catppuccin-macchiato",
    "catppuccin-mocha",
    "darkplus",
    "dracula",
    "dracula-soft",
    {
      name = "github dark",
      colorscheme = "github_dark",
    },
    {
      name = "github dark default",
      colorscheme = "github_dark_default",
    },
    {
      name = "gruvbox dark",
      colorscheme = "gruvbox",
      before = [[
        vim.o.background = "dark"
      ]],
    },
    {
      name = "gruvbox light",
      colorscheme = "gruvbox",
      before = [[
        vim.o.background = "light"
      ]],
    },
    "kanagawa-dragon",
    "kanagawa-lotus",
    "kanagawa-wave",
    "nightfox",
    "dayfox",
    "dawnfox",
    "duskfox",
    "nordfox",
    {
      name = "onedark dark",
      colorscheme = "onedark",
      before = [[
        require('onedark').setup {
          style = 'dark'
        }
      ]],
    },
    {
      name = "onedark darker",
      colorscheme = "onedark",
      before = [[
        require('onedark').setup {
          style = 'darker'
        }
      ]],
    },
    {
      name = "onedark cool",
      colorscheme = "onedark",
      before = [[
        require('onedark').setup {
          style = 'cool'
        }
      ]],
    },
    {
      name = "onedark deep",
      colorscheme = "onedark",
      before = [[
        require('onedark').setup {
          style = 'deep'
        }
      ]],
    },
    {
      name = "onedark warm",
      colorscheme = "onedark",
      before = [[
        require('onedark').setup {
          style = 'warm'
        }
      ]],
    },
    {
      name = "onedark warmer",
      colorscheme = "onedark",
      before = [[
        require('onedark').setup {
          style = 'warmer'
        }
      ]],
    },
    {
      name = "onedark light",
      colorscheme = "onedark",
      before = [[
        require('onedark').setup {
          style = 'light'
        }
      ]],
    },
    "terafox",
    "carbonfox",
    {
      name ="nord",
      colorscheme = "nord",
      before = [[
        require("settings.themes.nord")
      ]],
    },
    {
      name ="onenord",
      colorscheme = "onenord",
      before = [[
        require("settings.themes.onenord")
      ]],
    },
    "monokai",
    "monokai_pro",
    "monokai_soda",
    "monokai_ristretto",
    "nordic",
  },
  themeConfigFile = "~/.config/nvim/lua/theme.lua",
  livePreview = true,
}
