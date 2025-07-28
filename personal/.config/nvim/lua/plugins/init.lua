return {
    --{
    -- "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    -- opts = require "configs.conform",
    --},
    -- These are some examples, uncomment them if you want to see them work!
    -- {
    --   "neovim/nvim-lspconfig",
    --   config = function()
    --     require "configs.lspconfig"
    --   end,
    -- },

    -- test new blink
    -- { import = "nvchad.blink.lazyspec" },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "vim", "lua", "vimdoc",
                "html", "css",
                "c", "cpp", "python"
            },
        },
    },
    {
        "stevearc/oil.nvim",
        cmd = "Oil",
        opts = {
            default_file_explorer = true, -- Oil replaces netrw for directory buffers
            float = {
                padding = 8
            }
        },
    },
}
