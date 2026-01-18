-- File: lua/plugins/luasnip.lua
return {
  "L3MON4D3/LuaSnip",
  version = "v2.*", -- Follow major releases
  dependencies = {
    "rafamadriz/friendly-snippets", -- Required for pre-configured snippets
  },
  config = function()
    local ls = require("luasnip")

    -- Lazy load VS Code style snippets (including friendly-snippets)
    require("luasnip.loaders.from_vscode").lazy_load()

    ls.config.set_config({
      history = true,
      updateevents = "TextChanged,TextChangedI",
      enable_autosnippets = true,
    })
  end,
}

