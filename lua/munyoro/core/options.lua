vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- Line numbers
opt.relativenumber = true
opt.number = true

-- Tabbing and indentation
opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tabs to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- Search options
opt.ignorecase = true
opt.smartcase = true

-- Colors
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Window splitting
opt.splitright = true
opt.splitbelow = true

-- Misc
opt.backspace = "indent,eol,start"
opt.wrap = false
opt.cursorline = true
opt.cmdheight = 0
