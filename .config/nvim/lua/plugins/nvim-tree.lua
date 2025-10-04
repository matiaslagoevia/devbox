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
        -- Improve highlighting
        vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { fg = "#89b4fa", bold = true })
        vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = "#f9e2af", bold = true })
        vim.api.nvim_set_hl(0, "NvimTreeExecFile", { link = "NvimTreeFile" })
    end,
}
