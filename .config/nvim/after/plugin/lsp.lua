require('mason').setup()

-- ===== lua ===== 
vim.lsp.config['lua-language-server'] = {
    cmd = { 'lua-language-server' },
    root_markers = { '.luarc.json' },
    filetypes = { 'lua' },
    settings = {
        Lua = {
            diagnostics = { globals = { 'vim' } },
        },
    },
}
vim.lsp.enable('lua-language-server')

-- diagnostics
vim.diagnostic.config({
    virtual_lines = {
        -- Only for current line, to prevent clutter
        current_line = true,
    },
})
