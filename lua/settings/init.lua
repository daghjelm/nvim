--Formatting
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.relativenumber = true
vim.opt.number = true

--Enable backspace
vim.opt.backspace = '2'

vim.opt.hidden = true

vim.opt.termguicolors = true

--For multiple line errors, lints etc
vim.opt.cmdheight = 2

--Faster updates
vim.opt.updatetime = 300

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
