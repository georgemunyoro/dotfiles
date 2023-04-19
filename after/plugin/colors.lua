function set_colors(color)
  color = color or "rose-pine"
  vim.cmd.colorscheme(color)
end

set_colors("github_dark")
