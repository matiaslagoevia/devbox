-- Relative line numbers always on
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tab = 4 spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = false

-- Prettier windows
vim.o.winborder = 'rounded'

-- Disable netrw so that it doesn't interfere with nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
