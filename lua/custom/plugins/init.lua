-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { 'ekalinin/Dockerfile.vim' },
  { 'stevearc/dressing.nvim' },
  { 'rafamadriz/friendly-snippets' },
  {
    'RRethy/base16-nvim',
    priority = 1000,
    init = function()
      vim.cmd 'colorscheme base16-tomorrow-night'
    end,
  },
  {
    'sainnhe/everforest',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    -- init = function()
    --   vim.opt.background = 'dark'
    --   vim.g.everforest_background = 'hard'
    --   vim.cmd.colorscheme 'everforest'
    -- end,
  },
  {
    'rebelot/kanagawa.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    opts = {
      theme = 'wave',
    },
    -- init = function()
    --   vim.cmd 'colorscheme kanagawa'
    -- end,
  },
  {
    'EdenEast/nightfox.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    -- init = function()
    --   vim.cmd.colorscheme 'dayfox'
    -- end,
  },
  { 'tpope/vim-fugitive' },
  { 'tpope/vim-haml' },
  { 'towolf/vim-helm' },
  { 'folke/zen-mode.nvim' },
  {
    'folke/trouble.nvim',
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = 'Trouble',
    keys = {
      {
        '<leader>xx',
        '<cmd>Trouble diagnostics toggle<cr>',
        desc = 'Diagnostics (Trouble)',
      },
      {
        '<leader>xX',
        '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
        desc = 'Buffer Diagnostics (Trouble)',
      },
      {
        '<leader>cs',
        '<cmd>Trouble symbols toggle focus=false<cr>',
        desc = 'Symbols (Trouble)',
      },
      {
        '<leader>cl',
        '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
        desc = 'LSP Definitions / references / ... (Trouble)',
      },
      {
        '<leader>xL',
        '<cmd>Trouble loclist toggle<cr>',
        desc = 'Location List (Trouble)',
      },
      {
        '<leader>xQ',
        '<cmd>Trouble qflist toggle<cr>',
        desc = 'Quickfix List (Trouble)',
      },
    },
  },
}
