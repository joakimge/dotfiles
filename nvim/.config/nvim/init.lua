require("config.lazy")
require("config.options")
require("config.keymaps")

vim.g.mapleader = " "
vim.cmd [[colorscheme moonfly]]

-- Autocmd to start treesitter 
vim.api.nvim_create_autocmd("FileType", {
    callback = function(args)
        -- Get the language for the current buffer's filetype
        local lang = vim.treesitter.language.get_lang(args.match)
        -- If no language or no highlight queries are found, return
        if not lang or not vim.treesitter.query.get(lang, "highlights") then
            return
        end
        -- Enable treesitter for the current buffer
        vim.treesitter.start()
    end,
})

-- Autocommand to enable spellcheck for Markdown files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown", -- Triggers for files identified as 'markdown'
  callback = function()
    vim.opt_local.spell = true      -- Enable spell check locally
    vim.opt_local.spelllang = "en_us" -- Set language to US English
  end,
  desc = "Enable spellcheck for markdown files",
})

