local status_ok, dapui = pcall(require, "dapui")
if not status_ok then
    return
end

dapui.setup()

local dap = require("dap")

dap.listeners.before.attach.dapui_config = dapui.open
dap.listeners.before.launch.dapui_config = dapui.open
dap.listeners.before.event_terminated.dapui_config = dapui.close
dap.listeners.before.event_exited.dapui_config = dapui.close
