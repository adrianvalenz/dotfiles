-- add options

-- autocmd Filetype php setlocal autoindent expandtab tabstop=4 shiftwidth=4
vim.cmd [[
  " au BufRead,BufNewFile *.php syntax on
  " au BufRead,BufNewFile *.php colorscheme
  autocmd BufReadPost,FileReadPost,BufNewFile * call system("tmux rename-window " . expand("%:t"))
  autocmd Filetype php setlocal autoindent expandtab tabstop=4 shiftwidth=4
  " Python settings
  autocmd Filetype python setlocal autoindent fileformat=unix expandtab softtabstop=4 tabstop=4 shiftwidth=4
  " Flagging unnecessary whitespace
  au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
  
  map <ScrollWheelUp> <C-Y>
  map <ScrollWheelDown> <C-E>
  
  set autoindent
  set autowrite
  set backspace=indent,eol,start
  set clipboard=unnamed
  "  set cursorcolumn
  set cursorline
  set fileformat=unix
  set mouse=a
  set shortmess+=A
  set ttyfast
  set tw=80
  set vb t_vb=     " no visual bell & flash

  "colorscheme gruvbox
]]

-- a resource: article https://marioyepes.com/neovim-ide-with-lua-for-web-development/
--
vim.o.background = "dark" -- or "light" for light mode and "dark" for dark mode
vim.o.dir = '/tmp'
vim.o.number = true
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.laststatus = 2
vim.o.swapfile = false -- was true
vim.o.smartcase = true

vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.tabstop = 4
vim.o.wrap = false          -- Wrapping sucks (except on markdown)
vim.o.hidden = true         -- Allow multple buffers
vim.o.encoding = "utf-8"    -- Just in case
vim.o.cmdheight=1           -- Shows better messages

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

