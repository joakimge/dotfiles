return {
    {
        'sainnhe/sonokai',
        lazy = false,
        priority = 1000,
        config = function()
            vim.o.termguicolors = true

            vim.g.sonokai_style = "andromeda"

            -- darker background
            vim.g.sonokai_colors_override = {
                bg_dim = { "#1f2028", "232" },
                bg0    = { "#232530", "235" },
                bg1    = { "#2a2d39", "236" },
                bg2    = { "#2f3341", "236" },
            }

            -- optional: darker floating windows
            vim.g.sonokai_float_style = "dim"
        end
    },
    {
        'AlexvZyl/nordic.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('nordic').load()
        end,
    },
    {
        "rebelot/kanagawa.nvim",
        lazy = false,
        priority = 1000,
    },
    {
        "scottmckendry/cyberdream.nvim",
        lazy = false,
        priority = 1000,
    },
    {
        "bluz71/vim-moonfly-colors",
        name = "moonfly",
        lazy = false,
        priority = 1000
    },
    {
        "loctvl842/monokai-pro.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("monokai-pro").setup()
        end,
    },
}
