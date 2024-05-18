local neotest_status_ok, _ = pcall(require, "neotest")
local dap_status_ok, dap = pcall(require, "dap")
local dapgo_status_ok, _ = pcall(require, "dap-go")
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

if dap_status_ok then
  vim.keymap.set('n', '<F5>', function() dap.continue() end, opts)
  vim.keymap.set('n', '<F10>', function() dap.step_over() end, opts)
  vim.keymap.set('n', '<F11>', function() dap.step_into() end, opts)
  vim.keymap.set('n', '<F12>', function() dap.step_out() end, opts)
  vim.keymap.set('n', '<Leader>b', function() dap.toggle_breakpoint() end, opts)
  vim.keymap.set('n', '<Leader>B', function() dap.set_breakpoint() end, opts)
  vim.keymap.set('n', '<Leader>lp', function() dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end, opts)
  vim.keymap.set('n', '<Leader>dr', function() dap.repl.open() end, opts)
  vim.keymap.set('n', '<Leader>dl', function() dap.run_last() end, opts)
  vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
    require('dap.ui.widgets').hover()
  end, opts)
  vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
    require('dap.ui.widgets').preview()
  end, opts)
  vim.keymap.set('n', '<Leader>df', function()
    local widgets = require('dap.ui.widgets')
    widgets.centered_float(widgets.frames)
  end, opts)
  vim.keymap.set('n', '<Leader>ds', function()
    local widgets = require('dap.ui.widgets')
    widgets.centered_float(widgets.scopes)
  end, opts)
end

if dapgo_status_ok then
  keymap("n", "<Leader>dt", ":lua require('dap-go').debug_test()<CR>", opts)
end

