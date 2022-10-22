local opts = { noremap = true, silent = true }

local telescope = require('telescope.builtin')

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("n", "<Space>", "", opts)
keymap("n", "<C-Space>", "<cmd>WhichKey \\<leader><cr>", opts)
keymap("n", "<C-i>", "<C-i>", opts)

keymap("n", "ga", "<Plug>(EasyAlign)", opts)


-- NerdTree
keymap("n", "<leader>n", ":NERDTreeFocus<CR>", opts)
keymap("n", "<A-1>", ":NERDTreeToggle<CR>", opts)

-- Telescope
vim.keymap.set('n', 'ff', telescope.find_files, opts)
vim.keymap.set('n', 'fg', telescope.live_grep, opts)
vim.keymap.set('n', 'fb', telescope.buffers, opts)
vim.keymap.set('n', 'fh', telescope.help_tags, opts)

