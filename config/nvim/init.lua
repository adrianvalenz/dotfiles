
require('plugins')

vim.cmd [[
  set clipboard=unnamed
  map <ScrollWheelUp> <C-Y>
  map <ScrollWheelDown> <C-E>
  set mouse=a
  set shortmess+=A
  set cursorcolumn
  set cursorline
]]

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
keymap('n', '<space><space>', ':Exp<cr>', {})
keymap('n', 'nh', ':noh<cr>', {})
local opts = { noremap = true }
keymap('n', '<C-A>', '<C-W>', opts)
keymap('n', '<C-H>', '<C-W><C-H>', opts)
keymap('n', '<C-J>', '<C-W><C-J>', opts)
keymap('n', '<C-K>', '<C-W><C-K>', opts)
keymap('n', '<C-L>', '<C-W><C-L>', opts)
keymap('n', '<C-Q>', '<C-Y>', opts)
keymap('n', '<c-p>', '<cmd>Telescope find_files<cr>', opts)
keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)

