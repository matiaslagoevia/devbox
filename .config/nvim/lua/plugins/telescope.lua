vim.keymap.set('n', '<leader>fg', function()
    local include_expr = vim.fn.input("Include (fuzzy): ")
    local exclude_expr = vim.fn.input("Exclude (non-fuzzy): ")
    local args = {}
    table.insert(args, "-G")
    table.insert(args, "" .. include_expr)
    table.insert(args, "--ignore")
    table.insert(args, ".git/" .. exclude_expr)

    require('telescope.builtin').live_grep({
        layout_strategy = vim.api.nvim_get_option("columns") < 120 and "vertical" or "horizontal",
        additional_args = function()
            return args
        end,
    })
end)

vim.keymap.set('n', '<leader>ff', function()
    local include_expr = vim.fn.input("Include (fuzzy): ")
    local exclude_expr = vim.fn.input("Exclude (non-fuzzy): ")

    -- find_files doesn't support `additional_args`, so have to rebuild entire cmd
    local cmd = {
            "ag",
            "--nocolor",
            "--silent",
            "--follow",
            "--hidden",
            "-g", "" .. include_expr,
            "--ignore", ".git/" .. exclude_expr
        }

    require('telescope.builtin').find_files({
        find_command = cmd,
        layout_strategy = vim.api.nvim_get_option("columns") < 120 and "vertical" or "horizontal",
    })
end)

return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                build = "make",
            },
        },
        cmd = "Telescope",
        config = function()
            require("telescope").setup({
                defaults = {
                    prompt_prefix = "❯ ",
                    selection_caret = "❯ ",
                    mappings = {
                        i = {
                            ["<C-j>"] = "move_selection_next",
                            ["<C-k>"] = "move_selection_previous",
                            ["<C-q>"] = "close",
                        },
                        n = {
                            ["q"] = "close",
                        },
                    },
                },
                pickers = {
                    live_grep = {
                        vimgrep_arguments = {
                        "ag",
                        "--vimgrep",
                        "--nocolor",
                        "--silent",
                        "--follow",
                        "--hidden",
                        },
                    }
                },
            })
        end,
    },
}
