local status_ok, lspui = pcall(require, "LspUI")
if not status_ok then
  return
end

lspui.setup()
