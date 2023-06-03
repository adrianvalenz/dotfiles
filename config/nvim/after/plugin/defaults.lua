vim.opt.relativenumber = true

vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })

vim.api.nvim_set_keymap("n", ";", "<C-w>", { silent = true })
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.api.nvim_set_keymap('n', '<space><space>', ':Exp<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<space>h', ':noh<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-n>', ':BufferLineCycleNext<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-p>', ':BufferLineCyclePrev<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-b>', ':bd<CR>', {noremap = true})

-- vim.g.copilot_no_tab_map = true
vim.o.termguicolors = true
vim.o.cursorline = true
vim.cmd('colorscheme rose-pine')

vim.cmd("highlight Normal ctermbg=none guibg=none")
vim.cmd("highlight NonText ctermbg=none guibg=none")

vim.o.scrolloff = 8

-- vim.cmd("highlight ColorColumn ctermbg=0 guibg=#1f1d2e")
-- vim.o.colorcolumn = '80'
