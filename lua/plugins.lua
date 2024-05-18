local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- Various themes --
	"rebelot/kanagawa.nvim",
	"shaunsingh/nord.nvim",
	"rmehri01/onenord.nvim",
	"EdenEast/nightfox.nvim",
  "Mofiqul/dracula.nvim",
  {
    "catppuccin/nvim",
    name = "catppuccin"
  },
  "tanvirtin/monokai.nvim",
  "AlexvZyl/nordic.nvim",
	-- End themes     --
	"nvim-tree/nvim-web-devicons",
	"nvim-lua/plenary.nvim",
  -- UI Improvments
  "nvim-tree/nvim-tree.lua",
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "linrongbin16/lsp-progress.nvim"
    }
  },
	{
    "akinsho/bufferline.nvim",
    branch = "main",
    --version = "*",
    dependencies = "nvim-tree/nvim-web-devicons"
  },
	"rcarriga/nvim-notify",
  "zaldih/themery.nvim",
  -- Fuzzy Find 
	{
		"nvim-telescope/telescope.nvim",
    dependencies = "nvim-lua/plenary.nvim"
	},
  "nvim-telescope/telescope-symbols.nvim",
  "echasnovski/mini.move",
	"windwp/nvim-autopairs",
  "RRethy/vim-illuminate",
  -- Syntax Highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    build = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end
  },
  "windwp/nvim-ts-autotag",
  -- completion plugins
  "hrsh7th/nvim-cmp",                                 -- The completion plugin
  "hrsh7th/cmp-path",                                 -- path completions
  "hrsh7th/cmp-nvim-lua",                             -- NeoVim completions
  "hrsh7th/cmp-nvim-lsp",
  -- snippets
  "L3MON4D3/LuaSnip",                                 -- snippet engine
  "rafamadriz/friendly-snippets",                     -- a bunch of snippets to use
  -- LSP
  "neovim/nvim-lspconfig",                            -- language Server Protocol plugin
  "williamboman/mason.nvim",                          -- simple to use language server installer
  "williamboman/mason-lspconfig.nvim",                -- Mason & lspconfig integration
  "onsails/lspkind.nvim",                             -- same icons as vs-code 
  {
    "linrongbin16/lsp-progress.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
  },
  -- Various Dev tools
  {
    "nvim-neotest/neotest",                           -- test plugin
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-neotest/neotest-go",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter"
      -- Your other test adapters here
    },
  },
  {
    "leoluz/nvim-dap-go",                             -- golang debugger
    dependencies = "mfussenegger/nvim-dap",
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio"
    }
  },
  "simrat39/symbols-outline.nvim",                    -- a Tree View for symbols
  "lewis6991/gitsigns.nvim",                          -- git integration
  -- Various tools
})

vim.notify = require("notify")
