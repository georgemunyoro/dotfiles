return {
  "folke/tokyonight.nvim",
  dependencies = {
    "Mofiqul/vscode.nvim",
    "rebelot/kanagawa.nvim",
    "EdenEast/nightfox.nvim",
    "ellisonleao/gruvbox.nvim",
    "kepano/flexoki",
    "nyoom-engineering/nyoom.nvim",
    "bluz71/vim-nightfly-colors",
    "bluz71/vim-moonfly-colors",
    "balanceiskey/vim-framer-syntax",
    "ayu-theme/ayu-vim",
    "NLKNguyen/papercolor-theme",
    "kepano/flexoki",
    "nyoom-engineering/oxocarbon.nvim",
    "jacoborus/tender.vim",
    "kartikp10/noctis.nvim",

    -- Lush, a lua colorscheme generator
    "rktjmp/lush.nvim",
  },
  config = function()
    vim.cmd("colorscheme moonfly")
  end,
}
