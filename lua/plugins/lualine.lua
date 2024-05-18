local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
  return
end

lualine.setup {
  options = {
    icons_enabled = true,
    --theme = "onedark",
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = ''},
    disabled_filetypes = { "NvimTree", "Outline" }
  },
  sections = {
    lualine_c = {
      "require('lsp-progress').progress()",
    },
  },
  globalstatus = true,
}

-- listen lsp-progress event and refresh lualine
vim.api.nvim_create_augroup("lualine_augroup", { clear = true })
--vim.api.nvim_create_autocmd("User", {
--  group = "lualine_augroup",
--  pattern = "LspProgressStatusUpdated",
--  callback = require("lualine").refresh,
--})
--vim.api.nvim_create_autocmd("User LspProgressStatusUpdated", {
--  group = "lualine_augroup",
--  callback = require("lualine").refresh,
--})

