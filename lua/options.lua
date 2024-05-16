vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.python3_host_prog = "/usr/bin/python3"

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

vim.opt.fileencoding = "utf-8"                -- default encoding
vim.opt.backup = false                        -- don't backup a file before editing
vim.opt.clipboard = "unnamedplus"             -- enable access to system clipboard
vim.opt.wildmenu = true
vim.opt.wildmode = 'full'
vim.opt.showcmd = true
vim.opt.showmode = false
vim.opt.number = true                         -- show line numbers
vim.opt.expandtab = true                      -- convert tab to space
vim.opt.tabstop = 2                           -- the number of space a tab insert
vim.opt.shiftwidth = 2                        -- size of indentation
vim.opt.autoindent = true
vim.opt.mouse = 'a'                           -- enable mouse support
vim.opt.wrap = false
vim.opt.cursorline = true
