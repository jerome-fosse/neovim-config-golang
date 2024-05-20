local telescope_status_ok, _ = pcall(require, "telescope")
local utils = require("utils")

if telescope_status_ok then
  local builtin = require('telescope.builtin')

  utils.kmap('n', '<leader>ff', builtin.find_files, ':FZF - Find Files')
  utils.kmap('n', '<leader>fg', builtin.live_grep, ':FZF - Find Grep')
  utils.kmap('n', '<leader>fh', builtin.help_tags, ':FZF - Find Help tags')
  utils.kmap('n', '<leader>fk', builtin.keymaps, ':FZF - Find Keymaps')
  utils.kmap('n', '<leader>fs', builtin.symbols, ':FZF - Find Symbols')
  utils.kmap('n', '<leader>fo', builtin.vim_options, ':FZF - Find vim Options')
end
