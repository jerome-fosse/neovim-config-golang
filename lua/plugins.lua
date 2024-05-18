local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer = ensure_packer()

return require('packer').startup(function(use)
	use "wbthomason/packer.nvim"

	-- add your plugins here...

	-- Various themes --
	use "rebelot/kanagawa.nvim"
	use 'shaunsingh/nord.nvim'
	use "rmehri01/onenord.nvim"
	use "EdenEast/nightfox.nvim"
  use 'Mofiqul/dracula.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'tanvirtin/monokai.nvim'
  use 'AlexvZyl/nordic.nvim'
	-- End themes     --

	use "nvim-tree/nvim-web-devicons"
	use 'nvim-lua/plenary.nvim'

  -- UI Improvments
  use "nvim-tree/nvim-tree.lua"
  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      'nvim-tree/nvim-web-devicons',
      'linrongbin16/lsp-progress.nvim',
      opt = true
    }
  }
	use {
		'akinsho/bufferline.nvim',
		tag = "*", requires = 'nvim-tree/nvim-web-devicons'
	}
	use 'rcarriga/nvim-notify'
	vim.notify = require("notify")
  use 'zaldih/themery.nvim'

  -- Fuzzy Find 
	use {
		'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} }
	}
  use 'nvim-telescope/telescope-symbols.nvim'
  use 'echasnovski/mini.move'
	use "windwp/nvim-autopairs"
  use 'RRethy/vim-illuminate'

  -- Syntax Highlighting
  use {
    "nvim-treesitter/nvim-treesitter",
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }
  use 'windwp/nvim-ts-autotag'

  -- completion plugins
  use "hrsh7th/nvim-cmp"                          -- The completion plugin
  use "hrsh7th/cmp-path"                          -- path completions
  use "hrsh7th/cmp-nvim-lua"                      -- NeoVim completions
  use "hrsh7th/cmp-nvim-lsp"

  -- snippets
  use "L3MON4D3/LuaSnip"                          -- snippet engine
  use "rafamadriz/friendly-snippets"              -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig"                     -- enable LSP
  use "williamboman/mason.nvim"                   -- simple to use language server installer
  use "williamboman/mason-lspconfig.nvim"         -- Mason & lspconfig integration
  use "onsails/lspkind.nvim"                      -- same icons as vs-code 
  use {
    'linrongbin16/lsp-progress.nvim',
    requires = {'nvim-tree/nvim-web-devicons'},
    config = function()
      require('lsp-progress').setup()
    end
  }
--  use {
--    "jinzhongjia/LspUI.nvim",
--    config=function()
--      require("LspUI").setup({
--        prompt = false,
--      })
--    end
--  }

  -- Various Dev tools
  use({
    "nvim-neotest/neotest",
    requires = {
      "nvim-neotest/nvim-nio",
      "nvim-neotest/neotest-go",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter"
      -- Your other test adapters here
    },
  })
  use 'simrat39/symbols-outline.nvim'             -- a Tree View for symbols
  use 'lewis6991/gitsigns.nvim'

  -- Various tools

	if packer then
		require("packer").sync()
	end
end)

