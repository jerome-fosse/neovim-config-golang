local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  return
end

if lspconfig_status_ok then
  local utils = require("utils")

  local on_attach = function()
--    utils.kmap("n", "<Leader>k", vim.lsp.buf.hover, ':LSP - Help')
    utils.kmap("n", "<Leader>k", '<cmd>Lspsaga hover_doc<CR>', ':LSP - Help')
    utils.kmap('n', '<Leader>K', vim.lsp.buf.signature_help, ':LSP - Signature Help')
--    utils.kmap("n", "<Leader>gd", vim.lsp.buf.definition, ':LSP - Goto Definition')
    utils.kmap("n", "<Leader>gd", '<cmd>Lspsaga goto_definition<CR>', ':LSP - Goto Definition')
    utils.kmap("n", "<Leader>gtd", '<cmd>Lspsaga goto_type_definition', ':LSP - Goto Type Definition')
    utils.kmap("n", "<Leader>gi", '<cmd>Telescope lsp_implementations<CR>', ':LSP - Goto Implementation')
    utils.kmap("n", "<Leader>gR", '<cmd>Telescope lsp_references<CR>', ':LSP - Goto References')
    utils.kmap("n", "<Leader>f", '<cmd>Lspsaga finder<CR>', ':LSP - Finder')
--    utils.kmap("n", "<Leader>gt", vim.lsp.buf.type_definition, ':LSP - Type Definition')
--    utils.kmap("n", "<Leader>gi", vim.lsp.buf.implementation, ':LSP - Goto Implementation')
--    utils.kmap("n", "<Leader>gR", vim.lsp.buf.references, ':LSP - Goto References')
--    utils.kmap("n", "<Leader>gr", vim.lsp.buf.rename, ':LSP - Rename')
    utils.kmap("n", "<Leader>gr", '<cmd>Lspsaga rename<CR>', ':LSP - Rename')
    utils.kmap("n", "<Leader>gf", vim.lsp.buf.format, ':LSP - Format')
--    utils.kmap("n", "<Leader>ga", vim.lsp.buf.code_action, ':LSP - Code Actions')
    utils.kmap("n", "<Leader>ga", '<cmd>Lspsaga code_action<CR>', ':LSP - Code Actions')
    utils.kmap("n", "<Leader>sld", "<cmd>Lspsaga show_line_diagnostics<CR>", ":LSP - Show Line Diagnostics")
    utils.kmap("n", "<Leader>sbd", "<cmd>Lspsaga show_buf_diagnostics<CR>", ":LSP - Show Buffer Diagnostics")
    utils.kmap("n", "<Leader>swd", "<cmd>Lspsaga show_workspace_diagnostics<CR>", ":LSP - Show Workspace Diagnostics")
  end

  lspconfig.lua_ls.setup({
    on_attach = on_attach,
  })
  lspconfig.gopls.setup({
    on_attach = on_attach,
  })
  lspconfig.terraformls.setup({
    on_attach = on_attach,
  })
end
