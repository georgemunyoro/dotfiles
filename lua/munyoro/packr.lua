-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'


	-- Telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
  		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Themes

	use({ 'ayu-theme/ayu-vim' })
	use({ 'rose-pine/neovim', as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	})

	-- Treesitter
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/playground')

	-- Harpooon
	use('theprimeagen/harpoon')

	-- Undotree
	use('mbbill/undotree')

	-- Git
	use('tpope/vim-fugitive')

  -- LSP-Zero
  use {
  'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      --- Uncomment these if you want to manage LSP servers from neovim
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- LSP Support
      {'neovim/nvim-lspconfig'},
      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    }
  }

  -- Auto pairs
  use("jiangmiao/auto-pairs")

  -- NvimTree
  use("nvim-tree/nvim-tree.lua")
  use("nvim-tree/nvim-web-devicons")

end)

