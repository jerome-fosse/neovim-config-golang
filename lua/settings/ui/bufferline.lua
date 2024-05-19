local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  return
end

local highlights = require("nord").bufferline.highlights({
  italic = true,
  bold = true,
  fill = "#181c24",
})

bufferline.setup({
  options = {
    -- mode = "tabs",
    separator_style = "slant",
    numbers = "ordinal",
    close_command = "bdelete | bnext",
    right_mouse_command = "bdelete | bnext",
    offsets = {
      {
        filetype = "NvimTree",
        text = "Files",
        highlight = "Directory",
        separator = true,
      },
    },
    --show_duplicate_prefix = false,
    always_show_bufferline = false,
    highlights = highlights,
  },
})

