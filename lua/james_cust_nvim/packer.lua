-- Ensure packer.nvim is loaded
vim.cmd [[packadd packer.nvim]]

-- Initialize and configure packer.nvim
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Telescope for fuzzy finding
    use {
        'nvim-telescope/telescope.nvim', 
        tag = '0.1.8',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Gruvbox theme
    use { "ellisonleao/gruvbox.nvim" }

    -- Treesitter for better syntax highlighting and parsing
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'nvim-treesitter/playground'
    use {
        'windwp/nvim-ts-autotag'
    }

    -- Plenary
    use "nvim-lua/plenary.nvim" 

    -- Harpoon for quick file navigation
    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { {"nvim-lua/plenary.nvim"} }
    }

    -- Undo tree for visualizing undo history
    use 'mbbill/undotree'

    -- Fugitive for Git integration
    use 'tpope/vim-fugitive'

    -- LSP and autocomplete setup
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {'neovim/nvim-lspconfig'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }

    -- snippets
    use 'saadparwaiz1/cmp_luasnip'
    use 'rafamadriz/friendly-snippets'

    -- Mason for managing LSP servers, linters, and formatters
    use 'williamboman/mason.nvim'

    -- Auto closing braces and quotes
    use 'Raimondi/delimitMate'

    -- Commenting utility
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- Multi cursor functionality
    use 'mg979/vim-visual-multi'

    -- indenting lines
    use "lukas-reineke/indent-blankline.nvim"
end)

