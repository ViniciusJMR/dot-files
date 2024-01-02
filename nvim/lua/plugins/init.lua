return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {'folke/tokyonight.nvim'},
    -- LSP Support
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        lazy = true,
        config = false,
    },
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            {'hrsh7th/cmp-nvim-lsp'},
        }
    },
    -- Autocompletion
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            {'L3MON4D3/LuaSnip'}
        },
    },

    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    'nvim-treesitter/playground',
    "theprimeagen/harpoon",
    "mbbill/undotree",
    "tpope/vim-fugitive",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'saadparwaiz1/cmp_luasnip',
    'hrsh7th/cmp-nvim-lua',
    'L3MON4D3/LuaSnip',
    'rafamadriz/friendly-snippets',


}
