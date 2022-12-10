-- plugin setup
require("munyoro.plugins-setup")

-- core config
require("munyoro.core.options")
require("munyoro.core.colorscheme")
require("munyoro.core.keymaps")

-- plugins
require("munyoro.plugins.comment")
require("munyoro.plugins.nvim-tree")
require("munyoro.plugins.lualine")
require("munyoro.plugins.telescope")
require("munyoro.plugins.cmp")
require("munyoro.plugins.nvim-autopairs")
require("munyoro.plugins.treesitter")
require("munyoro.plugins.gitsigns")

-- lsp plugins
require("munyoro.plugins.lsp.mason")
require("munyoro.plugins.lsp.lspsaga")
require("munyoro.plugins.lsp.lspconfig")
require("munyoro.plugins.lsp.null-ls")
