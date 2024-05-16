local util = require("jdtls.util")
local M = {}

function M.show_classpath()
  util.with_classpaths(function(resp)
    print(table.concat(resp.classpaths, ':'))
  end)
end

return M
