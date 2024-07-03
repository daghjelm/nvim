local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true}

vim.g.mapleader = ' '

--Copy with leader - y
keymap('v', '<leader>y', '"*y', opts)

--select everything with leader-a
keymap('n', '<leader>a', 'gg<s-v><s-g>', opts)

--start a search and replace with leader-r
keymap('n', '<leader>r', ':%s/', opts)

--switch windows with ctrl-h, -l, etc
--keymap('n', '<c-h>', '<C-w>h', opts)
--keymap('n', '<c-l>', '<C-w>l', opts)
--keymap('n', '<c-j>', '<C-w>j', opts)
--keymap('n', '<c-k>', '<C-w>k', opts)

--clear search pattern with escape in normal mode
keymap('n', '<esc>', ':noh<cr>', opts)

--split panes with <leader>v for vertical and <leader>h for horizontal
keymap('n', '<leader>v', ':vsplit<cr>', opts)
keymap('n', '<leader>s', ':split<cr>', opts)

--navigate panes with leader + hjkl
keymap('n', '<leader>h', '<C-w>h', opts)
keymap('n', '<leader>l', '<C-w>l', opts)
keymap('n', '<leader>j', '<C-w>j', opts)
keymap('n', '<leader>k', '<C-w>k', opts)

--Telescope remaps
--nnoremap <c-p> :lua require"telescope.builtin".find_files{}<CR>
keymap('n', '<c-p>', '<cmd>lua require("telescope.builtin").find_files()<cr>', opts)
keymap('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>", opts)
keymap('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>", opts)
keymap('n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<cr>', opts)
keymap('n', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<cr>', opts)

--Nvimtree
keymap('n', '<c-b>', ':NvimTreeToggle<cr>', opts)

--formatter
keymap('n', '<leader>f', ':Format<cr>', opts)
keymap('n', '<leader>F', ':FormatWrite<cr>', opts)
keymap('n', '<c-/>', ':CommentToggle<cr>', opts)
keymap('v', '<c-/>', ':CommentToggle<cr>', opts)
keymap('i', '<c-/>', '<esc>:CommentToggle<cr>a', opts)

--tabs
keymap('n', '<leader>t', ':tab split<cr>', opts)
keymap('n', '<leader>1', '1gt', opts)
keymap('n', '<leader>2', '2gt', opts)
keymap('n', '<leader>3', '3gt', opts)
keymap('n', '<leader>4', '4gt', opts)
keymap('n', '<leader>5', '5gt', opts)
keymap('n', '<leader>6', '6gt', opts)

