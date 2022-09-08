
require("plugins")
require("lsp")
require("autocomplete")
require("highlighting")
require("autopair")
require("autotag")
require("colors")
require("line")
require("fuzzy")
require("formatting")
require("git")

vim.cmd [[
	set nowrap
	filetype plugin indent on
	set encoding=UTF-8
	set autoindent
	set relativenumber
	set noshowcmd
	set cmdheight=1
	set nowrap
	set hidden
	set updatetime=300
	set tabstop=2
	" set expandtab
	" set softtabstop=0 noexpandtab
	set shiftwidth=2 smarttab
	set nobackup
	set noswapfile
	set incsearch
	set ignorecase
	set smartcase
	set nu
	set cursorline

	function! Config()
	    edit ~/.config/nvim/
	endfunction

	" Much faster way to get open vimrc
	command Config call Config()

	" Split Navigation
	nnoremap <C-J> <C-W><C-J>
	nnoremap <C-K> <C-W><C-K>
	nnoremap <C-L> <C-W><C-L>
	nnoremap <C-H> <C-W><C-H>

	colorscheme codedark
	" colorscheme koehler
]]

