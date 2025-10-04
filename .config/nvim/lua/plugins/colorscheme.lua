return {
    {
        "tanvirtin/monokai.nvim",
        lazy = false,
        config = function()
            require("monokai").setup({
                palette = require("monokai").classic,
                italics = true,
            })
            vim.cmd.colorscheme("monokai")
        end,
    },
}
