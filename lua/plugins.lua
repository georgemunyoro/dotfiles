
local status, packer = pcall(require, "packer")
if (not status) then
    print("Packer is not installed")
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)

    ------------
    -- Packer --
    ------------
    use "wbthomason/packer.nvim" 			-- Let packer manage itself

    ---------------
    -- LSP Stuff --
    ---------------
		use {
			"neoclide/coc.nvim", branch = "release"
		}

    use "neovim/nvim-lspconfig" 			-- neovim lsp config
    use "L3MON4D3/LuaSnip" 				-- Snippet engine
    use "hrsh7th/cmp-nvim-lsp" 				-- nvim-cmp source for neovim's built-in LSP
    use "hrsh7th/cmp-buffer" 				-- nvim-cmp source for buffer words
    use "hrsh7th/nvim-cmp" 				-- A completion engine plugin for neovim
    use "nvim-treesitter/nvim-treesitter" 		-- Treesitter
		use "https://github.com/folke/trouble.nvim"

    --------------
    -- Autopair --
    --------------
    use "windwp/nvim-ts-autotag"			-- Autotag
    use "windwp/nvim-autopairs"				-- Autopair

    -----------------
    -- Status line --
    -----------------
    use "nvim-lualine/lualine.nvim"			-- Status line

    ------------------
    -- Fuzzy search --
    ------------------
    use "nvim-telescope/telescope.nvim"			-- Fuzzy finder
    use "nvim-telescope/telescope-file-browser.nvim" 	-- Fuzzy finder filer
    use "nvim-lua/plenary.nvim"				-- neovim lua utils

    ----------------
    -- Formatting --
    ----------------
    use "jose-elias-alvarez/null-ls.nvim"		-- 
    use "MunifTanjim/prettier.nvim"			-- prettier for formatting

    ---------
    -- Git --
    ---------
    use "lewis6991/gitsigns.nvim"			-- git markers
    use "dinhhuy258/git.nvim"				-- git utils

    --------------------------
    -- Additional LSP utils --
    --------------------------
    use "williamboman/mason.nvim"			-- Additional lsp support for libraries
    use "williamboman/mason-lspconfig.nvim"		-- LSP config for mason
    use "glepnir/lspsaga.nvim"				-- Cool UIs for various lsp features
    use "onsails/lspkind-nvim" 				-- VSCode-like pictograms

    -----------------------------
    -- Language-specific tools --
    -----------------------------
    -- JS/TS
    use "MunifTanjim/eslint.nvim"			-- eslint for neovim lsp
    -- Svelte
    use "evanleck/vim-svelte"				-- highlighting

    ------------
    -- Themes --
    ------------
    use "svrana/neosolarized.nvim"
    use "arzg/vim-colors-xcode"
    use "tomasiser/vim-code-dark"
    use "Mofiqul/vscode.nvim"
		use "projekt0n/github-nvim-theme"

    use "tjdevries/colorbuddy.nvim"			-- A colorscheme helper for Neovim.

    ----------
    -- Misc --
    ----------
    use "psliwka/vim-smoothie"
    use "lukas-reineke/indent-blankline.nvim"
		use "mhinz/vim-startify"						-- Vim Startify

end)

