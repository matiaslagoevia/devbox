local builtin = require('telescope.builtin')

require('telescope').setup({
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

vim.keymap.set('n', '<leader>fg', function()
    local include_expr = vim.fn.input("Include (fuzzy): ")
    local exclude_expr = vim.fn.input("Exclude (non-fuzzy): ")
    local args = {}
    table.insert(args, "-G")
    table.insert(args, "" .. include_expr)
    table.insert(args, "--ignore")
    table.insert(args, "" .. exclude_expr)

    builtin.live_grep({
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
            "--ignore", "" .. exclude_expr
        }

    builtin.find_files({
        find_command = cmd,
        layout_strategy = vim.api.nvim_get_option("columns") < 120 and "vertical" or "horizontal",
    })
end)