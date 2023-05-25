vim.opt.relativenumber = true

vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })

vim.api.nvim_set_keymap("n", ";", "<C-w>", { silent = true })
