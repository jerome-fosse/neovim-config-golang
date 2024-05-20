local utils = require("utils")

--          NORMAL MODE          --          
utils.kmap("n", "<Leader>q", [[:qa<CR>]], ':GEN - Quit')
--utils.kmap("n", "<Leader>qq", ":qa!<CR>", ':GEN - ')
utils.kmap("n", "<Leader>Q", [[:wqa<CR>]], ':GEN - Save & Quit')
utils.kmap("n", "<Leader>s", [[:w<CR>]], ':GEN - Save')
utils.kmap("n", "<Leader>S", [[:wa<CR>]], ':GEN - Save All')

-- Windows navigation -- 
utils.kmap("n", "<S-left>", [[ <C-w><left> ]], ':GEN - Go To Left Window')
utils.kmap("n", "<S-up>", [[ <C-w><up> ]], ':GEN - Go To Top Window')
utils.kmap("n", "<S-down>", [[ <C-w><down> ]], ':GEN - Go To Bottom Window')
utils.kmap("n", "<S-right>", [[ <C-w><right> ]], ':GEN - Go To Right Window')

-- Windows resizing --
utils.kmap("n", "<A-S-Up>", [[:resize -3<CR>]], ':GEN - Resize window to the top')
utils.kmap("n", "<A-S-Down>", [[:resize +2<CR>]], ':GEN - Resize window to the bottom')
utils.kmap("n", "<A-S-Right>", [[:vertical resize +2<CR>]], ':GEN - Resize window to the right')
utils.kmap("n", "<A-S-Left>", [[:vertical resize -2<CR>]], ':GEN - Resize Window the left')

--          VISUAL MODE          --          
-- Stay in indent mode
utils.kmap("v", "<", [[<gv]], ':GEN - Ident to the left')
utils.kmap("v", ">", [[>gv]], ':GEN - Ident to the right')

-- Copy/paste
utils.kmap("v", "<C-c>", [["+y']], ':GEN - Copy')
utils.kmap("v", "<C-v>", [["+p']], ':GEN - Paste')

--          TOOLS                 --
utils.kmap('n', '<A-1>', [[:NvimTreeToggle<CR>]], ':TOOLS - File Explorer')
utils.kmap('n', '<A-2>', [[:SymbolsOutline<CR>]], ':TOOLS - Symbols')
utils.kmap('n', '<A-3>', [[:lua require("neotest").summary.toggle()<CR>]], ':TOOLS - Tests')
utils.kmap('n', '<A-4>', [[:lua require("dapui").toggle()<CR>]], ':TOOLS - Debug')

