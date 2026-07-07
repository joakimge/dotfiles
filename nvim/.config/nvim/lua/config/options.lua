local set = vim.opt

-- WSL clipboard via xclip carries Windows CRLF line endings, which show up
-- as ^M in pasted text. Strip \r when reading from the clipboard.
vim.g.clipboard = {
    name = "xclip-wsl",
    copy = {
        ["+"] = "xclip -selection clipboard",
        ["*"] = "xclip -selection primary",
    },
    paste = {
        ["+"] = { "sh", "-c", "xclip -selection clipboard -o | sed 's/\\r$//'" },
        ["*"] = { "sh", "-c", "xclip -selection primary -o | sed 's/\\r$//'" },
    },
    cache_enabled = 0,
}

set.winborder = "single"
set.number = true
set.relativenumber = true
set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 4
set.splitright = true
set.expandtab = true
set.swapfile = false
set.backup = false
set.writebackup = false
set.scrolloff = 6
set.undofile = true
set.autoindent = true
set.copyindent = true
set.updatetime = 400
set.signcolumn = 'yes'
set.colorcolumn = '100'

local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = "*",
})
