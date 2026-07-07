vim.pack.add({
    "https://github.com/rafamadriz/friendly-snippets",
    {
    src = "https://github.com/L3MON4D3/LuaSnip",
    version = vim.version.range("v2.*"),
    },
})
local ls = require("luasnip")

require("luasnip.loaders.from_lua").lazy_load({
  paths = { vim.fn.stdpath("config") .. "/lua/snippets" },
})

-- Lazy load VS Code style snippets (including friendly-snippets)
require("luasnip.loaders.from_vscode").lazy_load()

ls.config.set_config({
  history = true,
  updateevents = "TextChanged,TextChangedI",
  enable_autosnippets = true,
})
