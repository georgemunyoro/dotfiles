local status, lualine = pcall(require, "lualine")

-- get lualine nightfly theme
local lualine_nightfly = require("lualine.themes.nightfly")

-- new colors for theme
local line_colors = {
  blue = "#65D1FF",
  green = "#3EFFDC",
  violet = "#FF61EF",
  yellow = "#FFDA7B",
  black = "#000000",
}

-- change nightlfy theme colors

lualine_nightfly.normal.a.bg = line_colors.blue
lualine_nightfly.insert.a.bg = line_colors.green
lualine_nightfly.visual.a.bg = line_colors.violet
lualine_nightfly.command = {
  a = {

    gui = "bold",
    bg = line_colors.yellow,
    fg = line_colors.black,
  },
}

-- configure lualine with modified theme
lualine.setup({
  options = {
    theme = lualine_nightfly,
  },
})

