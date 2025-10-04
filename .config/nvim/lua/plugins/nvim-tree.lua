map('n', '<Leader>t', ':NvimTreeToggle<CR>', { silent = true })

return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    cmd = "NvimTreeToggle",
    config = function()
        require("nvim-tree").setup({
            disable_netrw = true,
            hijack_netrw = true,
            update_cwd = true,
            respect_buf_cwd = false,
            filters = {
                dotfiles = false,
                custom = {
                    ".git",
                    "node_modules"
                },
            },
        })
    end,
}
