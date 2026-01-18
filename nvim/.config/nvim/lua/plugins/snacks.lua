return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        bigfile = { enabled = true },
        dashboard = { enabled = false },
        explorer = { enabled = false },
        indent = { enabled = false },
        input = { enabled = false },
        picker = { enabled = true ,
        layout = "custom",
        layouts = {
            custom = {
                layout = {
                    box = "vertical",
                    backdrop = false,
                    row = -1,
                    width = 0,
                    height = 0.4,
                    border = "top",
                    title = " {title} {live} {flags}",
                    title_pos = "left",
                    {
                        box = "horizontal",
                        { win = "list", border = "none" },
                        { win = "preview", title = "{preview}", width = 0.6, border = "left" },
                    },
                    { win = "input", height = 1, border = "none" },
                                },
                            }
                        }
                    },
        notifier = { enabled = false },
        quickfile = { enabled = false },
        scope = { enabled = false },
        scroll = { enabled = false },
        statuscolumn = { enabled = false },
        words = { enabled = false },
        },
    keys = {
        { "<leader>sf", function() Snacks.picker.files() end, desc = "Find files from cwd"},
        { "<leader>sg", function() Snacks.picker.grep() end, desc = "Search with grep"},
        { "<leader><leader>", function() Snacks.picker.buffers() end, desc = "Search in buffers"},
        { "<leader>sk", function() Snacks.picker.keymaps() end, desc = "View keymaps"},
    }
}
