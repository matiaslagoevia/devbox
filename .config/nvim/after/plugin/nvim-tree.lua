require("nvim-tree").setup {
    disable_netrw         = true,  -- disables the built-in file explorer
    hijack_netrw          = true,  -- take over netrw windows
    update_cwd            = true,  -- updates Neovim cwd when changing folders
    respect_buf_cwd       = false,  -- ensures tree changes global cwd instead of just window-local
}

map('n', '<Leader>t', ':NvimTreeToggle<CR>', { silent = true })