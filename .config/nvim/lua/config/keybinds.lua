-- Use space as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Pane movement
map("n", "<leader>l", "<C-W><C-L>", { silent = true })
map("n", "<leader>h", "<C-W><C-H>", { silent = true })
map("n", "<leader>k", "<C-W><C-K>", { silent = true })
map("n", "<leader>j", "<C-W><C-J>", { silent = true })

-- Toggle line numbers (useful to be able to mouse-copy text from iTerm2)
vim.keymap.set("n", "<leader>ln", function()
  if vim.wo.number or vim.wo.relativenumber then
    vim.wo.number = false
    vim.wo.relativenumber = false
    vim.wo.signcolumn = "no"
    print("Line numbers and signs hidden")
  else
    vim.wo.number = true
    vim.wo.relativenumber = true
    vim.wo.signcolumn = "auto"
    print("Line numbers and signs restored")
  end
end)

