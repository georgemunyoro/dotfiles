local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
  return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
  return
end

local typescript_setup, typescript = pcall(require, "typescript")
if not typescript_setup then
  return
end

local km = vim.keymap

local on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }

  km.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts)
  km.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
  km.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts)
  km.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
  km.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
  km.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)
  km.set("n", "<leader>d", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
  km.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)
  km.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
  km.set("n", "]d", "<cmd>Lspsaga diagnosticsjump_next<CR>", opts)
  km.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
  km.set("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", opts)

  if client.name == "tsserver" then
    km.set("n", "<leader>rf", ":TypescriptRenameFile<CR>")
    km.set("n", "<leader>oi", ":TypescriptOrganizeImports<CR>")
    km.set("n", "<leader>ru", ":TypescriptRemoveUnused<CR>")
  end
end

local capabilities = cmp_nvim_lsp.default_capabilities()

typescript.setup({
  server = {
    capabilities = capabilities,
    on_attach = on_attach,
  }
})

lspconfig["html"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig["cssls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig["tailwindcss"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig["lua_ls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.stdpath("config") .. "/lua"] = true,
        },
      },
    },
  },
})

