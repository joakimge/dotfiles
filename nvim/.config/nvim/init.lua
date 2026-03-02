require("config.lazy")
require("config.options")
require("config.keymaps")

vim.cmd [[colorscheme cyberdream]]
vim.g.mapleader = " "
vim.opt.guicursor = "n-v-c-i:block"
vim.opt.splitright = true


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

-- Autoformat on save
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("lsp_format_on_save", { clear = true }),
  callback = function(args)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = args.buf,
      callback = function()
        -- Use a synchronous call to ensure formatting completes before saving
        vim.lsp.buf.format { async = false, id = args.data.client_id }
      end,
    })
  end,
})

-- Stop <Tab> from jumping around "randomly"
function leave_snippet()
    if
        ((vim.v.event.old_mode == 's' and vim.v.event.new_mode == 'n') or vim.v.event.old_mode == 'i')
        and require('luasnip').session.current_nodes[vim.api.nvim_get_current_buf()]
        and not require('luasnip').session.jump_active
        then
            require('luasnip').unlink_current()
    end
end

-- stop snippets when you leave to normal mode
vim.api.nvim_command([[
autocmd ModeChanged * lua leave_snippet()
]])


