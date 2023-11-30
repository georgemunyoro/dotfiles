
-- Set leader key (space)
vim.g.mapleader = " "

-- open netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Copy & paste to and from clipboard
vim.keymap.set({'n', 'x'}, 'gy', '"+y')
vim.keymap.set({'n', 'x'}, 'gp', '"+p')

