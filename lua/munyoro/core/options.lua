
local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- disable line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- theming
opt.termguicolors = true
opt.background = "light"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- split windows
opt.splitright = true
opt.splitbelow = true

-- disable swap
opt.swapfile = false

-- hide cmd line 
opt.cmdheight = 0

-- show cursor line
opt.cursorline = true

