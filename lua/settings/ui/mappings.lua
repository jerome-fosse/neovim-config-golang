local bufferline_status_ok, _ = pcall(require, "bufferline")
local nvimtree_status_ok, _ = pcall(require, "nvim-tree")
local utils = require("utils")

if bufferline_status_ok then
  utils.kmap("n", "<A-Left>", [[:BufferLineCyclePrev<CR>]], ':BUFFER - Go to the buffer to the left')
  utils.kmap("n", "<A-Right>", [[:BufferLineCycleNext<CR>]], ':BUFFER - Go to the buffer to the right')
  utils.kmap("n", "<Leader>c", '<cmd>:bp|sp|bn|bd<CR>', ':BUFFER - Close current buffer')
  utils.kmap("n", "<Leader>C", [[:BufferLineCloseOthers<CR>]], ':BUFFER - Close other buffers')
  utils.kmap("n", "<Leader>1", [[:BufferLineGoToBuffer 1<CR>]], ':BUFFER - Go to buffer 1')
  utils.kmap("n", "<Leader>2", [[:BufferLineGoToBuffer 2<CR>]], ':BUFFER - Go to buffer 2')
  utils.kmap("n", "<Leader>3", [[:BufferLineGoToBuffer 3<CR>]], ':BUFFER - Go to buffer 3')
  utils.kmap("n", "<Leader>4", [[:BufferLineGoToBuffer 4<CR>]], ':BUFFER - Go to buffer 4')
  utils.kmap("n", "<Leader>5", [[:BufferLineGoToBuffer 5<CR>]], ':BUFFER - Go to buffer 5')
  utils.kmap("n", "<Leader>6", [[:BufferLineGoToBuffer 6<CR>]], ':BUFFER - Go to buffer 6')
  utils.kmap("n", "<Leader>7", [[:BufferLineGoToBuffer 7<CR>]], ':BUFFER - Go to buffer 7')
  utils.kmap("n", "<Leader>8", [[:BufferLineGoToBuffer 8<CR>]], ':BUFFER - Go to buffer 8')
  utils.kmap("n", "<Leader>9", [[:BufferLineGoToBuffer 9<CR>]], ':BUFFER - Go to buffer 9')
end

if nvimtree_status_ok then
  utils.kmap('n', '<leader>tff', [[:NvimTreeFindFile<CR>]], ':TREE - Find File in Tree')
end

