local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

nvim_tree.setup({
	sort_by = "case_sensitive",
	view = {
		width = 30,
    preserve_window_proportions = true,
	},
	modified = {
		enable = true,
		show_on_open_dirs = false,
	},
	renderer = {
    symlink_destination = false,
		group_empty = true,
		highlight_modified = "name",
		icons = {
			show = {
				modified = false,
			},
		},
	},
	filters = {
		dotfiles = false,
    git_ignored = false,
	},
	tab = {
		sync = {
			open = true,
			close = true,
		},
	},
})

local utils = require("utils")
utils.kmap('n', '<Leader>tff', [[:NvimTreeFindFile<CR>]], ':TREE Find File in Explorer')
