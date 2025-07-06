-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
vim.g.ruby_host_prg = '/Users/stevenmcfarlane/.rbenv/shims/ruby'
vim.g.codeium_disable_bindings = 1

vim.opt.spelllang = 'en_us'
vim.opt.spell = true

vim.opt.wrap = true

return {
  {
    'augmentcode/augment.vim',
    init = function()
      vim.g.augment_workspace_folders = {
        '/Users/stevenmcfarlane/work/rx',
      }
    end,
  },
  {
    'RRethy/base16-nvim',
    priority = 1000,
    -- init = function()
    --   vim.api.nvim_create_autocmd({ 'VimEnter', 'OptionSet' }, {
    --     desc = 'Change theme on OS theme change',
    --     pattern = 'background',
    --     callback = function()
    --       if vim.o.background == 'light' then
    --         vim.cmd 'colorscheme base16-tomorrow'
    --       else
    --         vim.cmd 'colorscheme base16-tomorrow-night-eighties'
    --       end
    --     end,
    --   })
    -- end,
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
      background = { -- map the value of 'background' option to a theme
        dark = 'wave', -- try "dragon" !
        light = 'lotus',
      },
    },
    -- init = function()
    --   vim.cmd 'colorscheme kanagawa'
    -- end,
  },
  {
    'EdenEast/nightfox.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      vim.api.nvim_create_autocmd({ 'VimEnter', 'OptionSet' }, {
        desc = 'Change theme on OS theme change',
        pattern = 'background',
        callback = function()
          if vim.o.background == 'light' then
            vim.cmd 'colorscheme dayfox'
          else
            vim.cmd 'colorscheme duskfox'
          end
        end,
      })
    end,
  },
  {
    'loctvl842/monokai-pro.nvim',
    -- init = function()
    --   vim.cmd.colorscheme 'monokai-pro-spectrum'
    -- end,
  },
  {
    'danilo-augusto/vim-afterglow',
    priority = 1000,
    -- init = function()
    --   vim.cmd.colorscheme 'afterglow'
    -- end,
  },
  { 'ekalinin/Dockerfile.vim' },
  { 'tpope/vim-fugitive' },
  { 'tpope/vim-surround' },
  { 'tpope/vim-rails' },
  { 'tpope/vim-rake' },
  { 'tpope/vim-bundler' },
  { 'tpope/vim-endwise' },
  { 'tpope/vim-haml' },
  { 'tpope/vim-liquid' },
  { 'tpope/vim-dotenv' },
  { 'tpope/vim-obsession' },
  { 'towolf/vim-helm' },
  { 'folke/zen-mode.nvim' },
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('bufferline').setup {
        options = {
          show_buffer_icons = false,
          offsets = {
            {
              filetype = 'neo-tree',
              text = 'Neo-tree',
              highlight = 'Directory',
              text_align = 'center',
            },
          },
        },
      }
      vim.keymap.set('n', '<leader>1', ':BufferLineGoToBuffer 1<CR>', { silent = true, desc = 'Go to buffer 1' })
      vim.keymap.set('n', '<leader>2', ':BufferLineGoToBuffer 2<CR>', { silent = true, desc = 'Go to buffer 2' })
      vim.keymap.set('n', '<leader>3', ':BufferLineGoToBuffer 3<CR>', { silent = true, desc = 'Go to buffer 3' })
      vim.keymap.set('n', '<leader>4', ':BufferLineGoToBuffer 4<CR>', { silent = true, desc = 'Go to buffer 4' })
      vim.keymap.set('n', '<leader>5', ':BufferLineGoToBuffer 5<CR>', { silent = true, desc = 'Go to buffer 5' })
      vim.keymap.set('n', '<leader>6', ':BufferLineGoToBuffer 6<CR>', { silent = true, desc = 'Go to buffer 6' })
      vim.keymap.set('n', '<leader>7', ':BufferLineGoToBuffer 7<CR>', { silent = true, desc = 'Go to buffer 7' })
      vim.keymap.set('n', '<leader>8', ':BufferLineGoToBuffer 8<CR>', { silent = true, desc = 'Go to buffer 8' })
      vim.keymap.set('n', '<leader>9', ':BufferLineGoToBuffer 9<CR>', { silent = true, desc = 'Go to buffer 9' })
      vim.keymap.set('n', '<leader>0', ':BufferLineGoToBuffer 10<CR>', { silent = true, desc = 'Go to buffer 10' })
      vim.keymap.set('n', '<leader>$', ':BufferLineGoToBuffer -1<CR>', { silent = true, desc = 'Go to last buffer' })
      vim.keymap.set('n', ']b', ':BufferLineCycleNext<CR>', { silent = true, desc = 'Next buffer' })
      vim.keymap.set('n', '[b', ':BufferLineCyclePrev<CR>', { silent = true, desc = 'Previous buffer' })
      vim.keymap.set('n', '<leader>br', '<Cmd>BufferLineCloseRight<CR>', { desc = 'Delete Buffers to the Right' })
      vim.keymap.set('n', '<leader>bl', '<Cmd>BufferLineCloseLeft<CR>', { desc = 'Delete Buffers to the Left' })
      vim.keymap.set('n', ']B', ':BufferLineMoveNext<CR>', { silent = true, desc = 'Move next buffer' })
      vim.keymap.set('n', '[B', ':BufferLineMovePrev<CR>', { silent = true, desc = 'Move previous buffer' })
    end,
  },
  {
    'MagicDuck/grug-far.nvim',
    config = function()
      require('grug-far').setup {}
    end,
  },
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
