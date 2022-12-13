-- Shorten function name and opts
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Personal mappings
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

-- Remap space as leader key
keymap("n", "<Space>", "", opts)

keymap("n", "<C-Space>", "<cmd>WhichKey \\<leader><cr>", opts)
keymap("n", "<C-i>", "<C-i>", opts)

-- EasyAlign
keymap("n", "ga", "<Plug>(EasyAlign)", opts)

-- NerdTree
keymap("n", "<leader>n", ":NERDTreeFocus<CR>", opts)
keymap("n", "<A-1>", ":NERDTreeToggle<CR>", opts)

-- Telescope
local telescope = require("telescope.builtin")
vim.keymap.set('n', 'ff', telescope.find_files, opts)
vim.keymap.set('n', 'fg', telescope.live_grep, opts)
vim.keymap.set('n', 'fb', telescope.buffers, opts)
vim.keymap.set('n', 'fh', telescope.help_tags, opts)

--- ToggleTerm
keymap("n", "<F12>", ":ToggleTerm<CR>", opts)

--- Coc-java
keymap("n", "<A-ENTER>", ":call CocAction('codeAction')<CR>", opts)
keymap("n", "<F6>", "<Plug>(coc-rename)<CR>", opts)

--- Vim-test
keymap("n", "<F4>", ":TestNearest<CR>", opts)
keymap("n", "<F5>", ":TestFile<CR>", opts)

--- Amiga Java Format
keymap("n", "<F7>", ":! mvn amiga-javaformat:apply<CR>", opts)

-- Copilot
keymap("n", "<F2>", ":Copilot<CR>", opts)
