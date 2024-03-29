local status, cmp = pcall(require, "cmp")
if (not status) then return end
local lspkind = require 'lspkind'
--------------------
-- Base LSP setup --
--------------------

cmp.setup({
    snippet = {
	expand = function(args)
	    require('luasnip').lsp_expand(args.body)
	end,
    },
    mapping = cmp.mapping.preset.insert({
	['<C-d>'] = cmp.mapping.scroll_docs(-4),
	['<C-f>'] = cmp.mapping.scroll_docs(4),
	['<C-Space>'] = cmp.mapping.complete(),
	['<C-e>'] = cmp.mapping.close(),
	['<Tab>'] = cmp.mapping.confirm({
	    behavior = cmp.ConfirmBehavior.Replace,
	    select = true
	}),
    }),
    sources = cmp.config.sources({
	{ name = 'nvim_lsp' },
	{ name = 'buffer' },
    }),
    formatting = {
	format = lspkind.cmp_format({ with_text = false, maxwidth = 50 })
    }
})

vim.cmd [[
	set completeopt=menuone,noinsert,noselect
	highlight! default link CmpItemKind CmpItemMenuDefault
]]

--------------
--- Mason ----
--------------

local status, mason = pcall(require, "mason")
if (not status) then return end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end

mason.setup({

})

lspconfig.setup {
    ensure_installed = { "sumneko_lua", "tailwindcss" },
}

local nvim_lsp = require "lspconfig"
nvim_lsp.tailwindcss.setup {}

--------------
-- LSP Saga --
--------------

local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.init_lsp_saga {
  server_filetype_map = {
    typescript = 'typescript'
  }
}

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', opts)
vim.keymap.set('n', '<leader>r', '<Cmd>Lspsaga rename<CR>', opts)

-- Code Actions
vim.keymap.set("n", "<leader>a", "<cmd>Lspsaga code_action<CR>", { silent = true })
vim.keymap.set("v", "<leader>a", "<cmd><C-U>Lspsaga range_code_action<CR>", { silent = true })

------------
-- eslint --
------------
local status, eslint = pcall(require, "eslint")
if (not status) then return end

eslint.setup({
    bin = 'eslint_d', -- or `eslint_d`
    code_actions = {
	enable = true,
	apply_on_save = {
	    enable = false,
	    types = { "problem" }, -- "directive", "problem", "suggestion", "layout"
	},
	disable_rule_comment = {
	    enable = true,
	    location = "separate_line", -- or `same_line`
	},
    },
    diagnostics = {
	enable = true,
	report_unused_disable_directives = false,
	run_on = "type", -- or `save`
    },
})


