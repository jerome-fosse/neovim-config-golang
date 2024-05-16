local status_ok, null_ls = pcall(require, "null-ls")
if not status_ok then
  return
end

null_ls.setup {
  source = {
    null_ls.builtins.formatting.gofmt,
    null_ls.builtins.formatting.goimports,
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.code_actions.gitsigns,
    null_ls.builtins.formatting.shfmt,            -- shell script formatting
    null_ls.builtins.formatting.prettier,         -- markdown formatting
    null_ls.builtins.diagnostics.shellcheck,      -- shell script diagnostics
    null_ls.builtins.code_actions.shellcheck,     -- shell script code actions

  },
}
