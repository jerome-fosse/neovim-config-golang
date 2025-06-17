local markdown_ok, markdown = pcall(require, "render-markdown")
if not markdown_ok then
  return
end

local color01 = "#949ae5"
local color02 = "#37f499"
local color03 = "#04d1f9"
local color04 = "#987afb"
local color05 = "#19dfcf"
local color06 = "#1682ef"
local color07 = "#1c242f"
local color08 = "#5fa9f4"
local color09 = "#a5afc2"
local color10 = "#0D1116"
local color11 = "#f16c75"
local color12 = "#f1fc79"
local color13 = "#314154"
local color14 = "#ebfafa"
local color15 = "#013e4a"
local color16 = "#e9b3fd"
local color17 = "#141b22"
local color18 = "#5b4996"
local color19 = "#21925b"
local color20 = "#027d95"
local color21 = "#585c89"
local color22 = "#0f857c"
local color23 = "#396592"

-- Define color variables
local color1_bg = "#949ae5"
local color2_bg = "#21925b"
local color3_bg = "#027d95"
local color4_bg = "#585c89"
local color5_bg = "#0f857c"
local color6_bg = "#396592"
local color1_fg = "#5b4996"
local color_fg = "#ebfafa"
--
-- Heading colors (when not hovered over), extends through the entire line
-- vim.cmd(string.format([[highlight Headline1Bg guifg=%s guibg=%s]], color18, color01))
-- vim.cmd(string.format([[highlight Headline2Bg guifg=%s guibg=%s]], color23, color08))
-- vim.cmd(string.format([[highlight Headline3Bg guifg=%s guibg=%s]], color_fg, color3_bg))
-- vim.cmd(string.format([[highlight Headline4Bg guifg=%s guibg=%s]], color_fg, color4_bg))
-- vim.cmd(string.format([[highlight Headline5Bg guifg=%s guibg=%s]], color_fg, color5_bg))
-- vim.cmd(string.format([[highlight Headline6Bg guifg=%s guibg=%s]], color_fg, color6_bg))

-- Highlight for the heading and sign icons (symbol on the left)
-- I have the sign disabled for now, so this makes no effect
-- vim.cmd(string.format([[highlight Headline1Fg guifg=%s]], color01))
-- vim.cmd(string.format([[highlight Headline2Fg guifg=%s]], color08))
-- vim.cmd(string.format([[highlight Headline3Fg cterm=bold gui=bold guifg=%s]], color3_bg))
-- vim.cmd(string.format([[highlight Headline4Fg cterm=bold gui=bold guifg=%s]], color4_bg))
-- vim.cmd(string.format([[highlight Headline5Fg cterm=bold gui=bold guifg=%s]], color5_bg))
-- vim.cmd(string.format([[highlight Headline6Fg cterm=bold gui=bold guifg=%s]], color6_bg))


markdown.setup({
  heading = {
    position = 'overlay',
    width = 'full',
--    left_pad = { 0, 3, 6, 9, 12, 15 },
--    icons = { "󰎤 ", "󰎧 ", "󰎪 ", "󰎭 ", "󰎱 ", "󰎳 " },
--    backgrounds = {
--      "Headline1Bg",
--      "Headline2Bg",
--      "Headline3Bg",
--      "Headline4Bg",
--      "Headline5Bg",
--      "Headline6Bg",
--    },
--    foregrounds = {
--      "Headline1Fg",
--      "Headline2Fg",
--      "Headline3Fg",
--      "Headline4Fg",
--      "Headline5Fg",
--      "Headline6Fg",
--    },
  },
})

