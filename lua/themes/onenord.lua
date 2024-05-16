local status_ok, onenord = pcall(require, 'onenord')
if not status_ok then
  return
end

onenord.setup({
  theme = "dark", -- "dark" or "light". Alternatively, remove the option and set vim.o.background instead
})
