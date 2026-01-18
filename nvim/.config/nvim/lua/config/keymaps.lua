
local opts = { noremap = true, silent = true }
local set = vim.keymap.set

set("n", "<leader>e", ":Oil<CR>",  opts)
set('n', '<ESC><ESC>', ':noh<CR>', opts)

-- Copying and pasting to system clipboard
set({'n','v','x'}, "<leader>y", '"+y', opts)
set({'n','v','x'}, "<leader>p", '"+p', opts)

-- Hold Alt to move lines up and down
set("n", "<A-j>", ":m .+1<CR>==", opts) -- move line up(n)
set("n", "<A-k>", ":m .-2<CR>==", opts) -- move line down(n)

-- Visual
set("v", "<", "<gv", opts)                  -- Code remains marked after indenting
set("v", ">", ">gv", opts)
set("v", "p", '"_dp', opts)                 -- Keep the previous word when pasting over another

set("v", "<A-j>", ":m '>+1<CR>gv=gv", opts) -- move line up(v)
set("v", "<A-k>", ":m '<-2<CR>gv=gv", opts) -- move line down(v)

-- Disable shift + arrows
set({'i','n'}, '<S-Up>', '<Nop>', opts)
set({'i','n'}, '<S-Down>', '<Nop>', opts)
set({'i','n'}, '<S-Left>', '<Nop>', opts)
set({'i','n'}, '<S-Right>', '<Nop>', opts)
