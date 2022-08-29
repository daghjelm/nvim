local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true}

vim.g.mapleader = ' '

--Copy with leader - y
keymap('v', '<leader>y', '"*y', opts)

--select everything with leader-a
keymap('n', '<leader>a', 'gg<s-v><s-g>', opts)

--start a search and replace with leader-r
keymap('n', '<leader>r', ':%s/', opts)

keymap('n', '<leader>r', ':%s/', opts)

--switch windows with shift-h, shift-l, etc
keymap('n', '<s-h>', '<C-w>h', opts)
keymap('n', '<s-l>', '<C-w>l', opts)
keymap('n', '<s-j>', '<C-w>j', opts)
keymap('n', '<s-k>', '<C-w>k', opts)

--clear search pattern with escape in normal mode
keymap('n', '<esc>', ':noh<cr>', opts)

--split panes with <leader>v for vertical and <leader>h for horizontal
keymap('n', '<leader>v', ':vsplit<cr>', opts)
keymap('n', '<leader>h', ':split<cr>', opts)

--Telescope remaps
--nnoremap <c-p> :lua require"telescope.builtin".find_files{}<CR>
keymap('n', '<c-p>', '<cmd>lua require("telescope.builtin").find_files()<cr>', opts)
keymap('n', '<leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<cr>', opts)
keymap('n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<cr>', opts)
keymap('n', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<cr>', opts)

--Nvimtree
keymap('n', '<c-b>', ':NvimTreeToggle<cr>', opts)
