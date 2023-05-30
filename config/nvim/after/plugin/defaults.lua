vim.opt.relativenumber = true

vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })

vim.api.nvim_set_keymap("n", ";", "<C-w>", { silent = true })
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.api.nvim_set_keymap('n', '<space><space>', ':Exp<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<space>h', ':noh<CR>', {noremap = true})

vim.g.copilot_no_tab_map = true
vim.o.termguicolors = true
vim.cmd('colorscheme rose-pine')
