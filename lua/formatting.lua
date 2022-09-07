local n_status, null_ls = pcall(require, "null-ls")
local p_status, prettier = pcall(require, "prettier")
if (not n_status) then return end
if (not p_status) then return end

null_ls.setup({
    sources = {
	null_ls.builtins.diagnostics.eslint_d.with({
	    diagnostics_format = '[eslint] #{m}\n(#{c})'
	}),
	null_ls.builtins.diagnostics.fish
    }
})

prettier.setup {
    bin = 'prettierd',
    filetypes = {
	"css",
	"javascript",
	"javascriptreact",
	"typescript",
	"typescriptreact",
	"json",
	"scss",
	"less",
	"svelte"
    }
}

