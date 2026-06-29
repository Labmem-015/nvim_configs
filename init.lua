vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

vim.opt.number = true
vim.opt.relativenumber = true

------- Key maps setup ------- 
local map = vim.keymap.set
local opts = { noremap = true, silent = true }
-- noremap: prohibit recursive execution
-- silent: hide command display at bottom

-- <mode>, <keys>, <action or keys>
map('n', '<leader>n', ':NERDTreeFocus<CR>', opts)
map('n', '<C-n>', ':NERDTree<CR>', opts)
map('n', '<C-t>', ':NERDTreeToggle<CR>', opts)
map('n', '<C-f>', ':NERDTreeFind<CR>', opts)

------- Plugins setup ------- 
local Plug = vim.fn['plug#']

vim.call('plug#begin')
Plug('vim-airline/vim-airline')
Plug('preservim/nerdtree')
Plug('ryanoasis/vim-devicons') 
vim.call('plug#end')
