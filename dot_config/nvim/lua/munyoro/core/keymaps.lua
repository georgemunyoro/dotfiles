vim.g.mapleader = " " -- Leader is spacebar

local km = vim.keymap

-- Tabs
km.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
km.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
km.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
km.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
km.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- Misc
km.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
km.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
km.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
km.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Close file" })
km.set("n", "<leader>qa", "<cmd>qa<CR>", { desc = "Close file" })
