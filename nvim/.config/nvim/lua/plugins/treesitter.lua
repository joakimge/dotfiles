return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  opts = {
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
  },
  config = function()
    require("nvim-treesitter").install({
      "lua",
      "c",
      "java",
      "vim",
      "go",
      "javascript",
      "typescript",
      "tsx",
      "jsx",
      "html",
      "rust",
    })
  end,
}
