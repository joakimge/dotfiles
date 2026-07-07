vim.g.mapleader = " "
require('config.options')
require('config.keymaps')

require('plugins.oil')
require('plugins.lsp')
require('plugins.theme')
require('plugins.luasnip')
require('plugins.telescope')
require('plugins.blink')
require('plugins.octo')
require('plugins.fugitive')

vim.opt.guicursor = "n-v-c-i:block"
vim.opt.splitright = true

vim.diagnostic.config({
  -- only show virtual text for errors, not warnings/hints
  virtual_text = {
    severity = { min = vim.diagnostic.severity.ERROR },
  },
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
