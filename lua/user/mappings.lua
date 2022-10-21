local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("n", "<Space>", "", opts)
keymap("n", "<C-Space>", "<cmd>WhichKey \\<leader><cr>", opts)
keymap("n", "<C-i>", "<C-i>", opts)

keymap("n", "ga", "<Plug>(EasyAlign)", opts)


-- NerdTree
keymap("n", "<leader>n", ":NERDTreeFocus<CR>", opts)
-- keymap("n", "<C-n>", ":NERDTree<CR>", opts)
keymap("n", "<A-1>", ":NERDTreeToggle<CR>", opts)
keymap("n", "<C-f>", ":NERDTreeFind<CR>", opts)
