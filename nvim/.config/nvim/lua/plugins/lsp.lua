-- lua/plugins/lsp.lua
return {
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("mason").setup()

      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
        },
      })

      vim.diagnostic.config({
        virtual_text = true,
      })

      -- LSP Keymaps
      local function lsp_on_attach(_, bufnr)
        local map = function(mode, lhs, rhs, desc)
          vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
        end

        map("n", "gd", vim.lsp.buf.definition, "Go to definition")
        map("n", "gi", vim.lsp.buf.implementation, "Go to implementation")
        map("n", "gr", vim.lsp.buf.references, "References")
        map("n", "K",  vim.lsp.buf.hover, "Hover")
        map("n", "<leader>d", ":lua vim.diagnostic.open_float()<CR>", "Show diagnostic under current line")
        map("n", "<leader>rn", vim.lsp.buf.rename, "Rename")
        map("n", "<leader>ca", vim.lsp.buf.code_action, "Code action")
      end



      -- Global defaults
      vim.lsp.config["*"] = {
        capabilities = vim.lsp.protocol.make_client_capabilities(),
        on_attach = lsp_on_attach,
      }

      -- Lua
      vim.lsp.config.lua_ls = {
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

      -- Enable everything Mason installs
      for _, server in ipairs(require("mason-lspconfig").get_installed_servers()) do
        vim.lsp.enable(server)
      end
    end,
  },
}

