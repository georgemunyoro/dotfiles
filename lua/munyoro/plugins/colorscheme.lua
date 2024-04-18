return {
  "folke/tokyonight.nvim",
  dependencies = {
    "Mofiqul/vscode.nvim",
    "rebelt/kanagawa.nvim",
    "EdenEast/nightfox.nvim",
  },
  config = function()
    vim.cmd("colorscheme carbonfox")
  end,
}
