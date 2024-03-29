-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    -- Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    -- to translate that we did the following
    use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use( 'theprimeagen/harpoon')
    use( 'mbbill/undotree' )
    use( 'tpope/vim-fugitive')
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }
    use( 'tpope/vim-rails' )
    use( 'slim-template/vim-slim' )
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use( 'tpope/vim-endwise')
    use( 'numToStr/Comment.nvim')
    use( 'windwp/nvim-ts-autotag')
    use( 'mattn/emmet-vim' )
    use( 'lukas-reineke/indent-blankline.nvim' )
    use( 'airblade/vim-gitgutter' )
    use({ 'kylechui/nvim-surround', tag="*" })
    use( 'f-person/git-blame.nvim' )

end)
