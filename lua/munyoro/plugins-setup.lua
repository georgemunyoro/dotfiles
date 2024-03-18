-- bootstrap lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

vim.g.mapleader = " " -- set `mapleader` before lazy so mappings are correct

require("lazy").setup({
	{ "nvim-lua/plenary.nvim" },

  -- colorschemes
	{ "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },
  { "ellisonleao/gruvbox.nvim" },
  { "sainnhe/sonokai" },
  { "nyoom-engineering/oxocarbon.nvim" },
  { "Mofiqul/vscode.nvim" },
  { "tiagovla/tokyodark.nvim" },
  { "catppuccin/nvim", name = "catppuccin" },
  { "projekt0n/github-nvim-theme" },
  { "sainnhe/edge" },

	{ "christoomey/vim-tmux-navigator" },
	{ "szw/vim-maximizer" },
	{ "tpope/vim-surround" },
  { "windwp/nvim-autopairs" },
  { "windwp/nvim-autopairs" },
  { "windwp/nvim-ts-autotag" },
	{ "numToStr/Comment.nvim", opts = {}, lazy = false },
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
	},

	-- autocomplete
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },

	-- snippets
	{ "L3MON4D3/LuaSnip", version = "v2.*" },
	{ "saadparwaiz1/cmp_luasnip" },
	{ "rafamadriz/friendly-snippets" },

	-- lsp
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "neovim/nvim-lspconfig" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{
		"nvimdev/lspsaga.nvim",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
	},
	{ "jose-elias-alvarez/typescript.nvim" },
	{ "onsails/lspkind.nvim" },

  { "github/copilot.vim" },

	{ "jose-elias-alvarez/null-ls.nvim" },
	{ "jayp0521/mason-null-ls.nvim" },

  { "lewis6991/gitsigns.nvim" },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },

  { "hrsh7th/cmp-cmdline" },

  { "psliwka/vim-smoothie" },

  { "karb94/neoscroll.nvim" }
})
