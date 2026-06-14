return {
    "mfussenegger/nvim-dap",
    {
        "rcarriga/nvim-dap-ui",
        dependencies = {
            "mfussenegger/nvim-dap",
            "nvim-neotest/nvim-nio",
        },
        config = function()
            local dap = require("dap")
            local dapui = require("dapui")

            dapui.setup({
                layouts = {
                    {
                        elements = {
                            { id = "scopes",      size = 0.40 },
                            { id = "watches",     size = 0.20 },
                            { id = "stacks",      size = 0.20 },
                            { id = "breakpoints", size = 0.20 },
                        },
                        size = 50,
                        position = "left",
                    },
                    {
                        elements = {
                            { id = "repl",    size = 0.50 },
                            { id = "console", size = 0.50 },
                        },
                        size = 12,
                        position = "bottom",
                    },
                },
            })

            dap.listeners.after.event_initialized["dapui_autoopen"] = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated["dapui_autoclose"] = function()
                dapui.close()
            end
            dap.listeners.before.event_exited["dapui_autoclose"] = function()
                dapui.close()
            end
        end,
    },
}
