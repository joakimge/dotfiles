local set = vim.opt

set.winborder = "single"
set.number = true
set.relativenumber = true
set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 4
set.expandtab = true
set.swapfile = false
set.backup = false
set.writebackup = false
set.scrolloff = 6
set.undofile = true
set.autoindent = true
set.copyindent = true
set.updatetime = 400
set.timeoutlen = 300
set.signcolumn = 'yes'

local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = "*",
})



