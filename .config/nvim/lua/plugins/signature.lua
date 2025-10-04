return {
  "ray-x/lsp_signature.nvim",
  event = "VeryLazy",
  opts = {
    bind = true,
    hint_enable = false,
    floating_window = true,
    handler_opts = {
      border = "rounded",
    },
    close_timeout = 1,
  },
  config = function(_, opts)
    require("lsp_signature").setup(opts)
  end,
}

