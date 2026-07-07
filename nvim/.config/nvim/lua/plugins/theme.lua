vim.pack.add({"https://github.com/sainnhe/sonokai"})
vim.o.termguicolors = true

vim.g.sonokai_style = "andromeda"

-- darker background
vim.g.sonokai_colors_override = {
    bg_dim = { "#1f2028", "232" },
    bg0    = { "#232530", "235" },
    bg1    = { "#2a2d39", "236" },
    bg2    = { "#2f3341", "236" },
}

-- optional: darker floating windows
vim.g.sonokai_float_style = "dim"
vim.cmd.colorscheme('sonokai')
