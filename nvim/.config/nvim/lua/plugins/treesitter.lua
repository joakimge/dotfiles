return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local ts = require("nvim-treesitter")

        local install_dir = vim.fn.stdpath("data") .. "/site"
        ts.setup({
            -- parsers + queries get installed here, and this dir is prepended to runtimepath
            install_dir = install_dir,
        })

        local wanted = {
            "lua", "c", "java", "vim", "go",
            "javascript", "typescript", "tsx",
            "html",
        }

        -- Only install missing parsers to avoid re-downloading every startup.
        local missing = {}
        for _, lang in ipairs(wanted) do
            local so = install_dir .. "/parser/" .. lang .. ".so"
            if not (vim.uv or vim.loop).fs_stat(so) then
                table.insert(missing, lang)
            end
        end
        if #missing > 0 then
            ts.install(missing)
        end
    end,
}
