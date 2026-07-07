vim.pack.add({
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/nvim-telescope/telescope.nvim",
  -- OR "https://github.com/ibhagwan/fzf-lua",
  -- OR "https://github.com/folke/snacks.nvim",
  "https://github.com/nvim-tree/nvim-web-devicons", -- optional
  "https://github.com/pwntester/octo.nvim",
})

require("octo").setup({
  picker = "telescope", -- or "fzf-lua" / "snacks" / "default"
  enable_builtin = true,
})

local map = vim.keymap.set
map("n", "<leader>gi", "<CMD>Octo issue list<CR>",        { desc = "List GitHub Issues" })
map("n", "<leader>gp", "<CMD>Octo pr list<CR>",           { desc = "List GitHub PullRequests" })
map("n", "<leader>gs", function()
  require("octo.utils").create_base_search_command({ include_current_repo = true })
end, { desc = "Search GitHub" })
