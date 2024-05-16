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


local keymap = vim.api.nvim_set_keymap

-- navigation
--keymap("n", "<A-Up>", [[:BufferLineGoToBuffer 1<CR>]], { silent = true })
keymap("n", "<A-Left>", [[:BufferLineCyclePrev<CR>]], { silent = true })
keymap("n", "<A-Right>", [[:BufferLineCycleNext<CR>]], { silent = true })
--keymap("n", "<A-Down>",[[:BufferLineGoToBuffer -1<CR>]] , { silent = true })
keymap("n", "<Leader>c", [[:bdelete | bnext<CR>]], { silent = true })
keymap("n", "<Leader>1", [[:BufferLineGoToBuffer 1<CR>]], { silent = true })
keymap("n", "<Leader>2", [[:BufferLineGoToBuffer 2<CR>]], { silent = true })
keymap("n", "<Leader>3", [[:BufferLineGoToBuffer 3<CR>]], { silent = true })
keymap("n", "<Leader>4", [[:BufferLineGoToBuffer 4<CR>]], { silent = true })
keymap("n", "<Leader>5", [[:BufferLineGoToBuffer 5<CR>]], { silent = true })
keymap("n", "<Leader>6", [[:BufferLineGoToBuffer 6<CR>]], { silent = true })
keymap("n", "<Leader>7", [[:BufferLineGoToBuffer 7<CR>]], { silent = true })
keymap("n", "<Leader>8", [[:BufferLineGoToBuffer 8<CR>]], { silent = true })
keymap("n", "<Leader>9", [[:BufferLineGoToBuffer 9<CR>]], { silent = true })

