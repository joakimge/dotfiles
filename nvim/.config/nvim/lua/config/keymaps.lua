local opts = { noremap = true, silent = true }
local set = vim.keymap.set

-- Unmap keys
set("n", "s", "<Nop>",opts) -- 's' no longer inserts

set("n", "<leader>e", ":Oil<CR>",  opts)
set('n', '<ESC>', ':noh<CR>', opts)
set('t', '<ESC><ESC>', '<C-\\><C-n>', opts) -- Escape terminal mode insert
set('i', 'jj', '<ESC><ESC>', opts) -- Escape terminal mode insert

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

-- Centers screen after movement
set("n", "<C-u>", "<C-u>zz", opts)
set('n', '<C-d>', '<C-d>zz', opts)
set("n", "n", "nzzzv", opts)
set("n", "N", "Nzzzv", opts)

set("n", "gd", function() require("telescope.builtin").lsp_definitions({ reuse_win = true }) end, opts)
set("n", "gR", "<cmd>Telescope lsp_references<cr>", {noremap = true, silent = true , nowait = true})
set("n", "gI", function() require("telescope.builtin").lsp_implementations({ reuse_win = true }) end, {noremap = true, silent = true , nowait = true})
set("n", "gy", function() require("telescope.builtin").lsp_type_definitions({ reuse_win = true }) end, opts)

-- Disable shift + arrows
set({'i','n'}, '<S-Up>', '<Nop>', opts)
set({'i','n'}, '<S-Down>', '<Nop>', opts)
set({'i','n'}, '<S-Left>', '<Nop>', opts)
set({'i','n'}, '<S-Right>', '<Nop>', opts)

-- Move between windows
set('n', '<C-h>', '<C-w>h', opts)
set('n', '<C-j>', '<C-w>j', opts)
set('n', '<C-k>', '<C-w>k', opts)
set('n', '<C-l>', '<C-w>l', opts)

-- Open nvim config
set('n', '<leader>nc', ':Oil ~/.config/nvim<CR>', opts)
