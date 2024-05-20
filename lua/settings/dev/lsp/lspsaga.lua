local status_ok, lspsaga = pcall(require, "lspsaga")
if not status_ok then
  return
end

lspsaga.setup({
  lightbulb = {
    enable = true,
    sign = true,
    debounce = 10,
    sign_priority = 40,
    virtual_text = false,
    enable_in_insert = true,
  },
  outline = {
    layout = 'normal',
    max_height = 0.5,
    left_width = 0.3,
    keys = {
      toggle_or_jump = '<cr>',
      quit = '<esc>',
      jump = 'e',
    },
  },
})
