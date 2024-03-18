
-- available colorschemes:
-- nightfly
-- gruvbox
-- sonokai
-- vscode
-- tokyodark
-- oxocarbon
-- catppuccin

local status, _ = pcall(vim.cmd, "colorscheme catppuccin")

if not status then
  print("Colorscheme not found!")
  return
end

require("catppuccin").setup({
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
            enabled = true,
            indentscope_color = "",
        },
        mason = true,
    }
})

