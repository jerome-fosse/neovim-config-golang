local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  return
end

local cmp_nvm_lsp_status_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvm_lsp_status_ok then
  return
end

local capabilities = cmp_nvim_lsp.default_capabilities()

local on_attach = function(client, bufnr)
  local keymap = vim.keymap
  local opts = { silent = true, buffer = 0 }

  -- set keybinds
  keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
  keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
  keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
  keymap.set('n', '<space>f', function()
    vim.lsp.buf.format { async = true }
  end, opts)
end

local on_attach_gopls = function()
  local opts = { silent = true, buffer = 0 }

  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, opts)
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
  vim.keymap.set("n", "gR", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "gr", vim.lsp.buf.rename, opts)
  vim.keymap.set("n", "gf", vim.lsp.buf.formatting, opts)
  vim.keymap.set("n", "ga", vim.lsp.buf.code_action, opts)
  vim.keymap.set("n", "en", vim.diagnostic.goto_next, opts)
  vim.keymap.set("n", "ep", vim.diagnostic.goto_prev, opts)
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
  on_attach = on_attach_gopls,
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
