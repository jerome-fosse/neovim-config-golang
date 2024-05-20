local neotest_status_ok, neotest = pcall(require, "neotest")
local utils = require("utils")

if neotest_status_ok then
  -- run nearest test
  utils.kmap('n', '<leader>tr', neotest.run.run, ':TEST - Run Test')
  -- stop tests
  utils.kmap('n', '<leader>ts', neotest.run.stop, ':TEST - Stop Test')
  -- run alll tests in the file
  utils.kmap('n', '<leader>tf', function() neotest.run.run(vim.fn.expand("%")) end, ':TEST - Run Test File')
  -- run all tests
  utils.kmap('n', '<leader>tR', function() neotest.run.run(vim.loop.cwd()) end, ':TEST - Run All Tests')
  -- output open
  utils.kmap('n', '<leader>to', function() neotest.output.open({ enter = false, auto_close = true }) end, ':TEST - Show Test Output')
  utils.kmap('n', '<leader>tO', neotest.output_panel.toggle, ':TEST - Show All Tests Output')
  -- Jump to tests
  utils.kmap('n', '<leader>tn', [[:Neotest jump next<CR>]], ':TEST - Next Test')
  utils.kmap('n', '<leader>tp', [[:Neotest jump prev<CR>]], ':TEST - Previous Test')
end
