local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  return
end

if lspconfig_status_ok then
  local opts = { silent = true, buffer = 0 }

  local on_attach = function()
    vim.keymap.set("n", "<Leader>K", vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<Leader>k', vim.lsp.buf.signature_help, opts)
    vim.keymap.set("n", "<Leader>gd", vim.lsp.buf.definition, opts)
    -- vim.keymap.set("n", "<Leader>gt", vim.lsp.buf.type_definition, opts)
    vim.keymap.set("n", "<Leader>gi", vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "<Leader>gR", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "<Leader>gr", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<Leader>gf", vim.lsp.buf.format, opts)
    -- vim.keymap.set("n", "<Leader>ga", vim.lsp.buf.code_action, opts)
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
