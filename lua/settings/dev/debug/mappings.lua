local dap_status_ok, dap = pcall(require, "dap")
local dapui_status_ok, dapui = pcall(require, "dapui")
local utils = require("utils")

if not dap_status_ok then
  return
end

utils.kmap('n', '<F5>', dap.continue, ':DEBUG - Start/Continue')
utils.kmap('n', '<F6>', dap.step_over, ':DEBUG - Step over')
utils.kmap('n', '<F7>', dap.step_into, ':DEBUG - Step into')
utils.kmap('n', '<F8>', dap.step_out, ':DEBUG - Step out')
utils.kmap('n', '<Leader>b', dap.toggle_breakpoint, ':DEBUG - Toggle breakpoint')
utils.kmap('n', '<Leader>lp', function() dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end, ':DEBUG - Log Point message')
utils.kmap('n', '<Leader>dr', dap.repl.open, ':DEBUG - Open REPL')
utils.kmap('n', '<Leader>dl', dap.run_last, ':DEBUG - Run last')

if dapui_status_ok then
  for _, v in pairs({[1] = 'n', [2] = 'v'}) do
    utils.kmap(v, '<Leader>de', dapui.eval, ':DEBUG - Evaluate')
  end
end

