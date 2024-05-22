local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  return
end

if lspconfig_status_ok then
  local utils = require("utils")

  local on_attach = function()
    utils.kmap("n", "<Leader>k", vim.lsp.buf.hover, ':LSP - Help')
    utils.kmap('n', '<Leader>K', vim.lsp.buf.signature_help, ':LSP - Signature Help')
    utils.kmap("n", "<Leader>gd", vim.lsp.buf.definition, ':LSP - Goto Definition')
    utils.kmap("n", "<Leader>gt", '<cmd>Telescope lsp_type_references<CR>', ':LSP - Type Definition')
    utils.kmap("n", "<Leader>gi", '<cmd>Telescope lsp_implementations<CR>', ':LSP - Goto Implementation')
    utils.kmap("n", "<Leader>gR", '<cmd>Telescope lsp_references<CR>', ':LSP - Goto References')
--    utils.kmap("n", "<Leader>gt", vim.lsp.buf.type_definition, ':LSP - Type Definition')
--    utils.kmap("n", "<Leader>gi", vim.lsp.buf.implementation, ':LSP - Goto Implementation')
--    utils.kmap("n", "<Leader>gR", vim.lsp.buf.references, ':LSP - Goto References')
    utils.kmap("n", "<Leader>gr", vim.lsp.buf.rename, ':LSP - Rename')
    utils.kmap("n", "<Leader>gf", vim.lsp.buf.format, ':LSP - Format')
    utils.kmap("n", "<Leader>ga", vim.lsp.buf.code_action, ':LSP - Code Actions')
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
