local mason_status, mason = pcall(require, "mason")
if not mason_status then
  return
end

local mason_lc_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lc_status then
  return
end

mason.setup()

mason_lspconfig.setup({
  ensure_installed = {
    "tsserver",
    "html",
    "cssls",
    "tailwindcss",
    "lua_ls",
    "clangd",
    "rust_analyzer",
  }
})

