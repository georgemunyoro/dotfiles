local lsp_zero = require('lsp-zero')

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    "tsserver",
    "rust_analyzer",
    "lua_ls",
    "eslint"
  },
  handlers = {
    lsp_zero.default_setup,
  },
})

