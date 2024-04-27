return {
  "folke/tokyonight.nvim",
  dependencies = {
    "Mofiqul/vscode.nvim",
    "rebelot/kanagawa.nvim",
    "EdenEast/nightfox.nvim",
  },
  config = function()
    vim.cmd("colorscheme carbonfox")
  end,
}
