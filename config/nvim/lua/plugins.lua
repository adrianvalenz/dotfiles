-- run ":PackerCompile" when changing this file
-- https://github.com/folke/which-key.nvim <- Install this soon. Looks cool
-- 'nyngwang/NeoZoom.lua',
-- 'kyazdani42/nvim-tree.lua',
-- use "rebelot/kanagawa.nvim"

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { "ellisonleao/gruvbox.nvim" }
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }
  --[[
  use { -- Configure LSP client for Intelephense
    'neovim/nvim-lspconfig',
    config = function()
      require('lspconfig').intelephense.setup({
        on_attach = function(client, bufnr)
          -- Enable (omnifunc) completion triggered by <c-x><c-o>
          vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
          vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
          -- Here we should add additional keymaps and configuration options.
        end,
        flags = {
          debounce_text_changes = 150,
        }
      })
    end
  }
  --]]
end)

--[[
require("tokyonight").setup({
  style = "storm",
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    sidebars = "dark",
    floats = "dark",

    sidebars = { "qf", "vista_kind", "terminal", "packer" },
  }
})
vim.cmd[[colorscheme tokyonight]]
--]]
--
--[[
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'tokyonight',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
--]]
--
require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = true,
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})

require('telescope').setup{ defaults = { file_ignore_patterns = {"node_modules", "tmp"} } }
