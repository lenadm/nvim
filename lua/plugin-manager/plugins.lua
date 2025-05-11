require('lazy').setup({
    -- NOTE: First, some plugins that don't require any configuration
    "carbon-steel/detour.nvim",
    'folke/which-key.nvim',
    'lukas-reineke/indent-blankline.nvim',
    'numToStr/Comment.nvim',
    "ellisonleao/gruvbox.nvim",
    'tpope/vim-fugitive',
    'ThePrimeagen/vim-be-good',

    {
        "cbochs/grapple.nvim",
        opts = {
            scope = "git", -- also try out "git_branch"
            icons = false, -- setting to "true" requires "nvim-web-devicons"
            status = false,
        },
        keys = {
            { "<leader>at", "<cmd>Grapple toggle<cr>", desc = "Tag a file" },
            { "<leader>lt", "<cmd>Grapple toggle_tags<cr>", desc = "Toggle tags menu" },

            { "<leader>0", "<cmd>Grapple select index=1<cr>", desc = "Select first tag" },
            { "<leader>1", "<cmd>Grapple select index=2<cr>", desc = "Select second tag" },
            { "<leader>2", "<cmd>Grapple select index=3<cr>", desc = "Select third tag" },
            { "<leader>3", "<cmd>Grapple select index=4<cr>", desc = "Select fourth tag" },
        },
    },

    {
        "m4xshen/autoclose.nvim",
        config = (function() require("autoclose").setup() end)
    },

    {
        "echasnovski/mini.align",
        config = (function() require("mini.align").setup() end)
    },

    {
         'stevearc/oil.nvim',
         dependencies = { "nvim-tree/nvim-web-devicons" },
    },

    {
        'neovim/nvim-lspconfig',
        dependencies = {
            { 'williamboman/mason.nvim', config = true },
            'williamboman/mason-lspconfig.nvim',
            'folke/neodev.nvim',
        },
    },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            options = {
                icons_enabled = false,
                theme = 'auto',
                component_separators = '|',
                section_separators = '',
            },
        },
    },

    {
        'hrsh7th/nvim-cmp',
        event = 'InsertEnter',
        dependencies = {
            -- Snippet Engine & its associated nvim-cmp source
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-nvim-lsp-signature-help',
        }
    },

    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = {
            'nvim-lua/plenary.nvim',
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                build = 'make',
                cond = function()
                    return vim.fn.executable 'make' == 1
                end,
            },
        },
    },

    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
        },
    },
}, {})
