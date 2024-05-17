local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  return
end

local cmp_nvm_lsp_status_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvm_lsp_status_ok then
  return
end

local capabilities = cmp_nvim_lsp.default_capabilities()

local on_attach = function()
  local opts = { silent = true, buffer = 0 }

  vim.keymap.set("n", "<Leader>k", vim.lsp.buf.hover, opts)
  -- vim.keymap.set('n', '<Leader>k', vim.lsp.buf.signature_help, opts)
  vim.keymap.set("n", "<Leader>gd", vim.lsp.buf.definition, opts)
  -- vim.keymap.set("n", "<Leader>gt", vim.lsp.buf.type_definition, opts)
  vim.keymap.set("n", "<Leader>gi", vim.lsp.buf.implementation, opts)
  vim.keymap.set("n", "<Leader>gR", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "<Leader>gr", vim.lsp.buf.rename, opts)
  vim.keymap.set("n", "<Leader>gf", vim.lsp.buf.format, opts)
  -- vim.keymap.set("n", "<Leader>ga", vim.lsp.buf.code_action, opts)
end

lspconfig.lua_ls.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
}

lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"gopls"},
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
}

lspconfig.terraformls.setup {
  capabilities = capabilities,
  on_attach = on_attach,
}
vim.api.nvim_create_autocmd({"BufWritePre"}, {
  pattern = {"*.tf", "*.tfvars", "*.go"},
  callback = function()
    vim.lsp.buf.format()
  end,
})
