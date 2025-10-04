-- Add path
local mason_bin = vim.fn.stdpath("data") .. "/mason/bin/"
vim.env.PATH = mason_bin .. ":" .. vim.env.PATH

return {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    cmd = { "Mason", "MasonInstall", "MasonUninstall" },
    config = function()
        require("mason").setup()
    end,
}