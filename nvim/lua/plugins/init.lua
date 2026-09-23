return {
    {
        "supermaven-inc/supermaven-nvim",
    },
    {
        'nvim-telescope/telescope.nvim',
        branch = 'master',
        dependencies = {
            'nvim-lua/plenary.nvim',
            -- optional but recommended
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        }
    },
    {'folke/tokyonight.nvim'},
    { "rose-pine/neovim", name = "rose-pine" },
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
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) function
    },
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {
        'AlexvZyl/nordic.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('nordic').load()
        end
    },
    { "savq/melange-nvim" },

    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ":TSUpdate",
        config = function()
            local parsers = {
                "cpp",
                "c",
                "lua",
                "vim",
                "vimdoc",
                "query",
                "go",
                "python",
                "javascript",
                "typescript",
                "html",
                "templ",
                "gdscript",
                "markdown",
                "markdown_inline",
            }

            require("nvim-treesitter").install(parsers)
        end,
    },
    {
        'MeanderingProgrammer/render-markdown.nvim',
        opts = {},
        dependencies = { 'nvim-treesitter/nvim-treesitter'},
    },
    "nvim-treesitter/nvim-treesitter-context",
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
    {
        "rmagatti/goto-preview",
        dependencies = { "rmagatti/logger.nvim" },
        event = "BufEnter",
        config = true, -- necessary as per https://github.com/rmagatti/goto-preview/issues/88
    },
    {
        "neanias/everforest-nvim",
        version = false,
        lazy = false,
        priority = 1000, -- make sure to load this before all the other start plugins
    },
}
