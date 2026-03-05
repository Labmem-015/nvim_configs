vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

vim.opt.number = true

local map = vim.keymap.set

map({'n', 'v', 'i'}, 'f', 'e')
map({'n', 'v'}, 'p', 'r')
map({'n', 'v'}, 'g', 't')
map({'n', 'v'}, 'j', 'y')
map({'n', 'v'}, 'l', 'u')
map({'n', 'v'}, 'u', 'i')
map({'n', 'v'}, 'y', 'o')
map({'n', 'v'}, ':', 'p')
map({'n', 'v'}, 'r', 's')
map({'n', 'v'}, 's', 'd')
map({'n', 'v'}, 't', 'f')
map({'n', 'v'}, 'd', 'g')
map({'n', 'v'}, 'n', 'j')
map({'n', 'v'}, 'e', 'k')
map({'n', 'v'}, 'i', 'l')
map({'n', 'v'}, 'o', ':')
map({'n', 'v'}, 'k', 'n')

map({'n', 'v'}, 'F', 'E')
map({'n', 'v'}, 'P', 'R')
map({'n', 'v'}, 'G', 'T')
map({'n', 'v'}, 'J', 'Y')
map({'n', 'v'}, 'L', 'U')
map({'n', 'v'}, 'U', 'I')
map({'n', 'v'}, 'Y', 'O')
map({'n', 'v'}, ':', 'P')
map({'n', 'v'}, 'R', 'S')
map({'n', 'v'}, 'S', 'D')
map({'n', 'v'}, 'T', 'F')
map({'n', 'v'}, 'D', 'G')
map({'n', 'v'}, 'N', 'J')
map({'n', 'v'}, 'E', 'K')
map({'n', 'v'}, 'I', 'L')
map({'n', 'v'}, 'O', ':')
map({'n', 'v'}, 'K', 'N')








