return {
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            vim.diagnostic.config({
                virtual_text = true,
            })

            -- LSP Keymaps
            local function lsp_on_attach(_, bufnr)
                local map = function(mode, lhs, rhs, desc)
                    vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
                end
                map("i", "<C-s>", vim.lsp.buf.signature_help, "Signature help")
            end

            -- Global defaults
            vim.lsp.config["*"] = {
                capabilities = vim.lsp.protocol.make_client_capabilities(),
                on_attach = lsp_on_attach,
            }

            -- Lua
            vim.lsp.config.lua_ls = {
                -- Optional: make it explicit it should be found on PATH
                -- cmd = { "lua-language-server" },
                settings = {
                    Lua = {
                        runtime = { version = "LuaJIT" },
                        diagnostics = { globals = { "vim" } },
                        workspace = {
                            library = vim.api.nvim_get_runtime_file("", true),
                            checkThirdParty = false,
                        },
                        telemetry = { enable = false },
                    },
                },
            }

            -- Enable the servers you have installed via Nix (devShell)
            local servers = {
                "lua_ls",
                "jdtls",
                "gopls",
                -- add more here, e.g. "nil_ls", "pyright", "rust_analyzer", ...
            }

            for _, server in ipairs(servers) do
                vim.lsp.enable(server)
            end
        end,
    },
}

-- lua/plugins/lsp.lua
-- return {
--
--     {
--         "williamboman/mason.nvim",
--     dependencies = {
--         "neovim/nvim-lspconfig",
--       "williamboman/mason-lspconfig.nvim",
--     },
--     config = function()
--       require("mason").setup()
--
--       require("mason-lspconfig").setup({
--         ensure_installed = {
--           "lua_ls",
--         },
--       })
--
--       vim.diagnostic.config({
--         virtual_text = true,
--       })
--
--       -- LSP Keymaps
--       local function lsp_on_attach(_, bufnr)
--         local map = function(mode, lhs, rhs, desc)
--           vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
--         end
--         map('i', '<C-s>', vim.lsp.buf.signature_help, "Signature help")
--       end
--
--
--
--       -- Global defaults
--       vim.lsp.config["*"] = {
--         capabilities = vim.lsp.protocol.make_client_capabilities(),
--         on_attach = lsp_on_attach,
--       }
--
--       -- Lua
--       vim.lsp.config.lua_ls = {
--         settings = {
--           Lua = {
--             runtime = { version = "LuaJIT" },
--             diagnostics = { globals = { "vim" } },
--             workspace = {
--               library = vim.api.nvim_get_runtime_file("", true),
--               checkThirdParty = false,
--             },
--             telemetry = { enable = false },
--           },
--         },
--       }
--
--       -- Enable everything Mason installs
--       for _, server in ipairs(require("mason-lspconfig").get_installed_servers()) do
--         vim.lsp.enable(server)
--       end
--     end,
--   },
-- }
--
-- NixOs
-- lua/plugins/lsp.lua
-- lua/plugins/lsp.lua
-- lua/plugins/lsp.lua
