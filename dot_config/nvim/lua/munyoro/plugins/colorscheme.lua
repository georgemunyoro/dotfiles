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
    "olivercederborg/poimandres.nvim",
    "barrientosvctor/abyss.nvim",
    "loctvl842/monokai-pro.nvim",

    -- Lush, a lua colorscheme generator
    "rktjmp/lush.nvim",
  },
  config = function()
    vim.g.moonflyItalics = false
    vim.opt.background = "dark"

    -- vim.cmd("colorscheme abyss")
    -- vim.cmd("colorscheme moonfly")
    -- vim.cmd("colorscheme tokyonight-night")
    -- vim.cmd("colorscheme dayfox")
    -- vim.cmd("colorscheme monokai-pro-octagon")
    vim.cmd("colorscheme vscode")

    vim.cmd("set guicursor=i:block")
  end,
}
