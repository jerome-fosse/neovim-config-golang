local keymap = vim.api.nvim_set_keymap

local opts = { silent = true }

--          NORMAL MODE          --          
keymap("n", "<Leader>q", ":qa<CR>", opts)
--keymap("n", "<Leader>qq", ":qa!<CR>", opts)
keymap("n", "<Leader>Q", ":wqa<CR>", opts)
keymap("n", "<Leader>s", ":w<CR>", opts)
keymap("n", "<Leader>S", ":wa<CR>", opts)
keymap("n", "<Leader><Space>", ":lua require('utils.popup-menu').ShowMenu({'Compile', 'Run', 'Debug'})<CR>", opts)

-- Windows navigation -- 
keymap("n", "<S-left>", "<C-w><left>", opts)
keymap("n", "<S-up>", "<C-w><up>", opts)
keymap("n", "<S-down>", "<C-w><down>", opts)
keymap("n", "<S-right>", "<C-w><right>", opts)

-- Windows resizing --
keymap("n", "<A-S-Up>", ":resize -3<CR>", opts)
keymap("n", "<A-S-Down>", ":resize +2<CR>", opts)
keymap("n", "<A-S-Right>", ":vertical resize +2<CR>", opts)
keymap("n", "<A-S-Left>", ":vertical resize -2<CR>", opts)

-- Copy/paste
-- keymap("n", "<C-c>", '"+y', opts)
-- keymap("v", "<C-c>", '"+y', opts)
-- keymap("n", "<C-v>", '"+p', opts)
-- keymap("v", "<C-v>", '"+p', opts)

--          VISUAL MODE          --          
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Copy/paste
keymap("v", "<C-c>", '"+y', opts)
keymap("v", "<C-v>", '"+p', opts)

--          TOOLS                 --
keymap('n', '<A-1>', [[:NvimTreeToggle<CR>]], {silent = true}) -- File Explorer : NvimTree
keymap('n', '<A-2>', [[:SymbolsOutline<CR>]], {silent = true}) -- File Structure : Symbols Outline 
keymap('n', '<A-3>', [[:lua require("neotest").summary.toggle()<CR>]], {silent = true}) -- File Structure : Symbols Outline 
keymap('n', '<A-4>', [[:lua require("dapui").toggle()<CR>]], {silent = true}) -- File Structure : Symbols Outline 

