vim.pack.add({
    "https://github.com/williamboman/mason.nvim",
    "https://github.com/neovim/nvim-lspconfig",
    "https://github.com/williamboman/mason-lspconfig.nvim",
})
require("mason").setup()

require("mason-lspconfig").setup({
})

vim.diagnostic.config({
virtual_text = true,
})

-- LSP Keymaps
local function lsp_on_attach(_, bufnr)
local map = function(mode, lhs, rhs, desc)
  vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
end
map('i', '<C-s>', vim.lsp.buf.signature_help, "Signature help")
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
