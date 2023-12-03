-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Basics
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('JoosepAlviste/nvim-ts-context-commentstring')
    use({'scalameta/nvim-metals', requires = { "nvim-lua/plenary.nvim" }})

    -- FileExplorer
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use 'nvim-tree/nvim-tree.lua'
    use('ThePrimeagen/harpoon')

    -- colorschemes
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use 'sainnhe/everforest'
    use "EdenEast/nightfox.nvim"
    use 'navarasu/onedark.nvim'

    -- Quirks
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('prettier/vim-prettier')
    use 'github/copilot.vim'
    use 'wakatime/vim-wakatime'
    use {
      'terrortylor/nvim-comment',
      config = function()
        require('nvim_comment').setup()
      end
    }
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
    use({ "barrett-ruth/live-server.nvim" })
    use({ "tpope/vim-surround" })
    use({
      "startup-nvim/startup.nvim",
      requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
      config = function()
        require"startup".setup()
      end
    })

    -- Pretty things
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- Icon Packs
    use 'nvim-tree/nvim-web-devicons'
    use 'onsails/lspkind.nvim'
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }

end)
