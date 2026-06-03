vim.cmd [[packadd packer.nvim]]
-- Ensure packer.nvim is loaded

return require('packer').startup(function(use)

    -- Packer manages itself
    use 'wbthomason/packer.nvim'

    -- UI / Navigation
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use "ellisonleao/gruvbox.nvim"

    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { "nvim-lua/plenary.nvim" }
    }

    use 'mbbill/undotree'
    
    -- Git tools
    use 'tpope/vim-fugitive'

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use 'windwp/nvim-ts-autotag'

    -- LSP + Autocompletion
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'

    use "VidocqH/lsp-lens.nvim"

    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'rafamadriz/friendly-snippets'

    -- Auto closing quotes {}
    use 'Raimondi/delimitMate'

    -- comment out code (gcc)
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- Indent line
    use "lukas-reineke/indent-blankline.nvim"

    -- Debugging (REQUIRED)
    use 'mfussenegger/nvim-dap'

    use "nvim-neotest/nvim-nio"

    use {
        "rcarriga/nvim-dap-ui",
        requires = { "mfussenegger/nvim-dap" },
        config = function()
            require("dapui").setup()
        end
    }

    use 'theHamsta/nvim-dap-virtual-text'

    -- Optional but VERY helpful
    use 'jay-babu/mason-nvim-dap.nvim'
end)
