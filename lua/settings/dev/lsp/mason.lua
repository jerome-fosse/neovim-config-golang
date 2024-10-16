local mason_status_ok, mason = pcall(require, "mason")
if not mason_status_ok then
  return
end

local mason_lspconfig_status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status_ok then
  return
end

mason.setup({
  ui = {
    border = "single", -- none, single, double, rounded, solid, shadow
    icons = {
      package_installed = "",
      package_pending = "",
      package_uninstalled = "",
    },
  }
})

mason_lspconfig.setup({
  ensure_installed = {
    "lua_ls",
--    "pbls",
    "gopls",
    "terraformls"
  },
  automatic_installation = true,
})

