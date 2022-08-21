local set = vim.opt 
--Formatting
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.smartindent = true

set.hlsearch = true
set.incsearch = true

set.relativenumber = true
set.number = true

--Enable backspace
set.backspace = '2'

set.hidden = true

set.termguicolors = true

--For multiple line errors, lints etc
set.cmdheight = 2

--Faster updates
set.updatetime = 300

--Keymaps
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true}

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--nnoremap <c-p> :lua require'telescope.builtin'.find_files{}<CR>
--Telescopt remaps
keymap('n', '<c-p>', "<cmd>lua require('telescope.builtin').find_files()<cr>", opts)
keymap('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>", opts)
--keymap('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>", opts)
--keymap('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>", opts)
