M = {}

-- Define a keymap for a function
-- @param mode The mode the keymap is set
-- @param keys 
-- @param func
-- @param desc
function M.kmap(mode, keys, func, desc)
  desc = desc or '** unknown description **'
  vim.keymap.set(mode, keys, func, { silent = true, desc = ':USER ' .. desc})
end

function M.notify(msg, style, opts)
  local t = type(opts)
  assert(t == "string" or t == "table", "opts should be a string or a table.")

  if t == "string" then
    opts = { title = opts}
  end
  vim.notify(msg, style, opts)
end

function M.notifyE(msg, opts)
  M.notify(msg, 'Error', opts)
end

function M.notifyI(msg, opts)
  M.notify(msg, "Info", opts)
end

function M.notifyW(msg, opts)
  M.notify(msg, "Warn", opts)
end

function M.notifyD(msg, opts)
  M.notify(msg, "Debug", opts)
end

return M
