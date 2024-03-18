
vim.g.mapleader = " "

local km = vim.keymap

km.set("n", "<leader>nh", ":nohl<CR>")

km.set("n", "<leader>sv", "<C-w>v")     -- split window vertically
km.set("n", "<leader>sh", "<C-w>s")     -- split window horizontally
km.set("n", "<leader>se", "<C-w>=")     -- make split windows equal size
km.set("n", "<leader>sx", ":close<CR>") -- close current split window

km.set("n", "<leader>to", ":tabnew<CR>")    -- open a new tab
km.set("n", "<leader>tx", ":tabclose<CR>")  -- close current tab
km.set("n", "<leader>tn", ":tabn<CR>")      -- go to next tab
km.set("n", "<leader>tp", ":tabp<CR>")      -- go to previous tab

km.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- vim maximizer

km.set("n", "<leader>aa", ":lua vim.lsp.buf.format()<CR>") -- format

