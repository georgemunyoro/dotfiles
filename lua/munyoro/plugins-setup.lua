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
  { "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },
  { "christoomey/vim-tmux-navigator" },
  { "szw/vim-maximizer" },
  { "tpope/vim-surround" },
  { "cohama/lexima.vim" },
  { "numToStr/Comment.nvim", opts = {}, lazy = false },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }
  },
  {
    "nvim-telescope/telescope.nvim", tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build"
  },

  -- autocomplete
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },

  -- snippets
  { "L3MON4D3/LuaSnip", version = "v2.*" },
  { "saadparwaiz1/cmp_luasnip" },
  { "rafamadriz/friendly-snippets" },
})


