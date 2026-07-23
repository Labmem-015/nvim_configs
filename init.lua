vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.expandtab = false

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = 'a'
vim.opt.mousescroll = 'ver:1,hor:6'

------- Key maps setup ------- 
local map = vim.keymap.set
local opts = { noremap = true, silent = true }
-- noremap: prohibit recursive execution
-- silent: hide command display at bottom

-- vim.g.mapleader = "\" 

-- <mode>, <keys>, <action or keys>
map({'n', 'i'} , '<A-n>', ':NERDTreeFocus<CR>', opts)
map('n', '<C-n>', ':NERDTree<CR>', opts)
map('n', '<C-t>', ':NERDTreeToggle<CR>', opts)
map('n', '<C-f>', ':NERDTreeFind<CR>', opts)

map({'n', 'i'} , '<A-f>', ':lua vim.lsp.buf.format()<CR>', opts)

------- Plugins setup ------- 
local Plug = vim.fn['plug#']

vim.call('plug#begin')
Plug('vim-airline/vim-airline')
Plug('preservim/nerdtree')
Plug('ryanoasis/vim-devicons')
Plug('nvim-telescope/telescope.nvim')
Plug('nvim-lua/plenary.nvim') -- nvim-telescope dependency
vim.call('plug#end')

vim.keymap.set('n', '<C-p>', require('telescope.builtin').find_files, {})

------- LSP setup ------- 
vim.lsp.config('clangd', {
	cmd = {
		"clangd",
		"--background-index",
		"--clang-tidy",
		"-j=4",
		"--completion-style=detailed",
		"--header-insertion=never",
	},
})

vim.lsp.enable('clangd')

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local opts = { buffer = args.buf }
    
    -- Переход к коду
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    
    -- Документация и действия
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  end,
})
