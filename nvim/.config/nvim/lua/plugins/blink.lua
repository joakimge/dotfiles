vim.pack.add({
    {
    src = "https://github.com/saghen/blink.cmp",
    version = vim.version.range("1.*"),
    },
})

require("blink.cmp").setup({
    keymap = {
        preset = 'default',
        ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
    },
    completion = { documentation = { auto_show = true } },
})
