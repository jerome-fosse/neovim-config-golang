local bufferline_status_ok, _ = pcall(require, "bufferline")
local nvimtree_status_ok, _ = pcall(require, "nvim-tree")

local keymap = vim.api.nvim_set_keymap
local opts = { silent = true }

if bufferline_status_ok then
  --keymap("n", "<A-Up>", [[:BufferLineGoToBuffer 1<CR>]], { silent = true })
  keymap("n", "<A-Left>", [[:BufferLineCyclePrev<CR>]], opts)
  keymap("n", "<A-Right>", [[:BufferLineCycleNext<CR>]], opts)
  --keymap("n", "<A-Down>",[[:BufferLineGoToBuffer -1<CR>]] , opts)
  keymap("n", "<Leader>c", [[:bdelete | bnext<CR>]], opts)
  keymap("n", "<Leader>1", [[:BufferLineGoToBuffer 1<CR>]], opts)
  keymap("n", "<Leader>2", [[:BufferLineGoToBuffer 2<CR>]], opts)
  keymap("n", "<Leader>3", [[:BufferLineGoToBuffer 3<CR>]], opts)
  keymap("n", "<Leader>4", [[:BufferLineGoToBuffer 4<CR>]], opts)
  keymap("n", "<Leader>5", [[:BufferLineGoToBuffer 5<CR>]], opts)
  keymap("n", "<Leader>6", [[:BufferLineGoToBuffer 6<CR>]], opts)
  keymap("n", "<Leader>7", [[:BufferLineGoToBuffer 7<CR>]], opts)
  keymap("n", "<Leader>8", [[:BufferLineGoToBuffer 8<CR>]], opts)
  keymap("n", "<Leader>9", [[:BufferLineGoToBuffer 9<CR>]], opts)
end

if nvimtree_status_ok then
  keymap('n', '<Leader>tff', [[:NvimTreeFindFile<CR>]], opts)
end

