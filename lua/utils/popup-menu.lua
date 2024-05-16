local status_ok, popup = pcall(require, "plenary.popup")
if not status_ok then
  vim.notify("Plenary must be installed !", "Error", { title = "Error" })
  return
end

local M = {}

function M.ShowMenu(opts)
  local height = 20
  local width = 30
  local borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" }

  M.Win_id = popup.create(opts, {
    title = "MyProjects",
    highlight = "MyProjectWindow",
    line = math.floor(((vim.o.lines - height) / 2) - 1),
    col = math.floor((vim.o.columns - width) / 2),
    minwidth = width,
    minheight = height,
    borderchars = borderchars,
    callback = function (_, row)
      print(row)
    end,
  })
  local bufnr = vim.api.nvim_win_get_buf(M.Win_id)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "q", [[:lua Close()<CR>]], { silent=true })
end

function Close()
  vim.api.nvim_win_close(M.Win_id, true)
end

return M
