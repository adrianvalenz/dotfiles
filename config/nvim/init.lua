
require('plugins')

vim.o.number = true
vim.o.swapfile = true
vim.o.dir = '/tmp'
vim.o.smartcase = true
vim.o.laststatus = 2
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = true

vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.softtabstop = 2

local keymap = vim.api.nvim_set_keymap
keymap('i', '<C-space>', '<Esc>', {})
keymap('n', '<c-s>', ':w<CR>', {})
keymap('i', '<c-s>', '<Esc>:w<CR>a', {})
keymap('n', '<space><space>', '<C-^>', {})
local opts = { noremap = true }
keymap('n', '<c-j>', '<c-w>j', opts)
keymap('n', '<c-h>', '<c-w>h', opts)
keymap('n', '<c-k>', '<c-w>k', opts)
keymap('n', '<c-l>', '<c-w>l', opts)
keymap('n', '<c-p>', '<cmd>Telescope find_files<cr>', opts)
keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)

