local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true}

vim.g.mapleader = ' '

--Copy with leader - y
keymap('v', '<leader>y', '"*y', opts)

--select everything with leader-a
keymap('n', '<leader>a', 'gg<s-v><s-g>', opts)

--Telescope remaps
--nnoremap <c-p> :lua require"telescope.builtin".find_files{}<CR>
keymap('n', '<c-p>', '<cmd>lua require("telescope.builtin").find_files()<cr>', opts)
keymap('n', '<leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<cr>', opts)
keymap('n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<cr>', opts)
keymap('n', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<cr>', opts)

--Nvimtree
keymap('n', '<c-b>', ':NvimTreeToggle<cr>', opts)
