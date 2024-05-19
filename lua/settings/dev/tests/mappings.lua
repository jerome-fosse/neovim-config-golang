local neotest_status_ok, _ = pcall(require, "neotest")
local keymap = vim.api.nvim_set_keymap
local opts = { silent = true }

if neotest_status_ok then
  -- run nearest test
  keymap('n', '<leader>tr', ':lua require("neotest").run.run()<CR>', opts)
  -- stop tests
  keymap('n', '<leader>ts', ':lua require("neotest").run.stop()<CR>', opts)
  -- run alll tests in the file
  keymap('n', '<leader>tf', ':lua require("neotest").run.run(vim.fn.expand("%"))<CR>', opts)
  -- run all tests
  keymap('n', '<leader>tR', ':lua require("neotest").run.run(vim.loop.cwd())<CR>', opts)
  -- output open
  keymap('n', '<leader>to', ':lua require("neotest").output.open({ enter = false, auto_close = true })<CR>', opts)
  keymap('n', '<leader>tO', ':lua require("neotest").output_panel.toggle()<CR>', opts)
  -- Jump to tests
  keymap('n', '<leader>tn', [[:Neotest jump next<CR>]], opts)
  keymap('n', '<leader>tp', [[:Neotest jump prev<CR>]], opts)
end
