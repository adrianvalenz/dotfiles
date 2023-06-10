vim.opt.relativenumber = true

vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })

vim.api.nvim_set_keymap("n", ";", "<C-w>", { silent = true })
vim.api.nvim_set_keymap('n', '<space><space>', ':Exp<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>h', ':noh<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-n>', ':BufferLineCycleNext<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-p>', ':BufferLineCyclePrev<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>c', ':bd<CR>', {noremap = true})

-- Move cursor to extreme
vim.api.nvim_set_keymap('n', 'gl', '$', {noremap = true})
vim.api.nvim_set_keymap('n', 'gh', '|', {noremap = true})
vim.api.nvim_set_keymap('n', 'gj', ':$<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', 'gk', 'gg', {noremap = true})

-- vim.g.copilot_no_tab_map = true
vim.o.termguicolors = true
vim.o.cursorline = true
vim.cmd('colorscheme rose-pine')

-- vim.cmd("highlight Normal ctermbg=none guibg=none")
-- vim.cmd("highlight NonText ctermbg=none guibg=none")
--
vim.api.nvim_set_keymap("n", "<leader>sv", "<C-w>v", {noremap = true}) -- split window vertically
vim.api.nvim_set_keymap("n", "<leader>sh", "<C-w>s", {noremap = true}) -- split window horizontally
vim.api.nvim_set_keymap("n", "<leader>se", "<C-w>=", {noremap = true}) -- make split window equal width
vim.api.nvim_set_keymap("n", "<leader>sx", ":close<CR>", {noremap = true}) -- close current split window

vim.api.nvim_set_keymap("n", "<leader>to", ":tabnew<CR>", {noremap = true}) -- open new tab
vim.api.nvim_set_keymap("n", "<leader>tn", ":tabn<CR>", {noremap = true}) -- go to next tab
vim.api.nvim_set_keymap("n", "<leader>tp", ":tabp<CR>", {noremap = true}) -- got to prev tab
vim.api.nvim_set_keymap("n", "<leader>tx", ":tabclose<CR>", {noremap = true}) -- close current tab

-- Escape remap options
vim.api.nvim_set_keymap('i', '<C-a>', '<Esc>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-a>', '<Esc>', {noremap = true})
vim.api.nvim_set_keymap('v', '<C-a>', '<Esc>', {noremap = true})

-- Retired/Haitus remaps
-- vim.cmd("highlight ColorColumn ctermbg=0 guibg=#1f1d2e")
-- vim.o.colorcolumn = '80'
-- vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
--
