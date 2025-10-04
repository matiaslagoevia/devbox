return {
    {
        "loctvl842/monokai-pro.nvim",
        lazy = false,
        config = function()
            require("monokai-pro").setup({
                terminal_colors = true,
                devicons = true,
                flavor = "ristretto",
            })
            vim.cmd.colorscheme("monokai-pro")
        end,
    },
}
