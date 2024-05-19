require("neotest").setup({
  adapters = {
    require("neotest-go")({
      recursive_run = true
    })
  },
  diagnostic = {
    enabled = true,
    -- 1 = Error, 2 = Warn, 3 = Info, 3 = Hint
    severity = 1
  }
})
