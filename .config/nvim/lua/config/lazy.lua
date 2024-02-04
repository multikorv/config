local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable', -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    'williamboman/mason.nvim',
    {
        'williamboman/mason-lspconfig.nvim', 
        lazy = false 
    },
    'lewis6991/gitsigns.nvim',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip',
    'neovim/nvim-lspconfig',
    'nvim-lua/plenary.nvim',
    'famiu/feline.nvim',
    'folke/tokyonight.nvim',
    { 
        'rose-pine/neovim', 
        name = 'rose-pine' 
    },
    {
        'nvim-telescope/telescope.nvim', 
        tag = '0.1.5', 
        dependencies = 
        { 
            'nvim-lua/plenary.nvim' 
        }
    },
    {
        'nvim-telescope/telescope-file-browser.nvim',
        dependencies = 
        { 
            'nvim-telescope/telescope.nvim', 
            'nvim-lua/plenary.nvim' 
        }
    },
    {
        'nvim-treesitter/nvim-treesitter', 
        build = ':TSUpdate'
    }
})
