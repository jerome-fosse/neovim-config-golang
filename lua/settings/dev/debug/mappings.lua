local dap_status_ok, dap = pcall(require, "dap")
local dapgo_status_ok, dapgo = pcall(require, "dap-go")
local opts = { silent = true }

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
  vim.keymap.set("n", "<Leader>dt", function() dapgo.debug_test() end, opts)
end
