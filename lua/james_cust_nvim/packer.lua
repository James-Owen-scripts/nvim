vim.cmd [[packadd packer.nvim]]
-- Ensure packer.nvim is loaded

return require('packer').startup(function(use)

    -- Packer manages itself
    use 'wbthomason/packer.nvim'

    -------------------------------------------------
    -- UI / Navigation
    -------------------------------------------------

    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use "ellisonleao/gruvbox.nvim"

    use "nvim-lua/plenary.nvim"

    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { "nvim-lua/plenary.nvim" }
    }

    use 'mbbill/undotree'
    use 'tpope/vim-fugitive'

    -------------------------------------------------
    -- Treesitter
    -------------------------------------------------

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use 'nvim-treesitter/playground'
    use 'windwp/nvim-ts-autotag'

    -------------------------------------------------
    -- LSP + Completion (MODERN STACK)
    -------------------------------------------------

    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'

    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'rafamadriz/friendly-snippets'

    -------------------------------------------------
    -- Editor enhancements
    -------------------------------------------------

    use 'Raimondi/delimitMate'

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use "lukas-reineke/indent-blankline.nvim"

end)
