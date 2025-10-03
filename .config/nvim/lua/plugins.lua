-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

    -- Telescope as a fuzzy finder
	use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
	}
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    -- Monokai theme
    use({
        'tanvirtin/monokai.nvim',
        config = function()
            require('monokai').setup {
                palette = require('monokai').pro, -- options: default | pro | soda | risti
                custom_hlgroups = {},             -- optional overrides
            }
            vim.cmd('colorscheme monokai')
        end
    })


    -- Nvim tree (file explorer)
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
    }

    -- Git
    use('tpope/vim-fugitive')
    use('junegunn/gv.vim')

    -- Tree sitter
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')

    -- Mason
    use { "williamboman/mason.nvim" }

end)
