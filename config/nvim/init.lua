
require('plugins')

vim.cmd [[
  set clipboard=unnamed
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
local opts = { noremap = true }
keymap('n', '<c-f>', '<c-w>', opts)
keymap('n', '<c-f>"', ':sp<cr>', opts)
keymap('n', '<c-f>%', ':vs<cr>', opts)
keymap('n', '<c-p>', '<cmd>Telescope find_files<cr>', opts)
keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)

