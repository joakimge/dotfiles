return {
    'chomosuke/typst-preview.nvim',
    lazy = false, -- or ft = 'typst'
    version = '1.*',
    opts = {
        dependencies_bin = {
            ['tinymist'] = "/run/current-system/sw/bin/tinymist" },
        -- Custom port to open the preview server. Default is random.
        -- Example: port = 8000
        port = 8000,

        -- Custom host to bind the preview server to.
        -- Note that '0.0.0.0' is not supported and [won't be](https://github.com/Myriad-Dreamin/tinymist/issues/2105)
        -- Example: host = '192.168.0.10'
        host = '127.0.0.1',
    }, -- lazy.nvim will implicitly calls `setup {}`
}
