local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

telescope.setup({
  defaults = {
    prompt_prefix = "🔍 ",
    path_display = { "truncate", },
  },
  pickers = {
    live_grep = {
      theme = "dropdown",
    },
  },
})

