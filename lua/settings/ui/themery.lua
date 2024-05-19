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
    "dracula",
    "dracula-soft",
    "kanagawa-dragon",
    "kanagawa-lotus",
    "kanagawa-wave",
    "nightfox",
    "dayfox",
    "dawnfox",
    "duskfox",
    "nordfox",
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
        require("require.themes.onenord")
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
