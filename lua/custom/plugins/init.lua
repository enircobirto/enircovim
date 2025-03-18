-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } },
  },
  { 'catppuccin/nvim', as = 'catppuccin' },
  { 'theprimeagen/harpoon' },
  { 'mbbill/undotree' },
  { 'tpope/vim-fugitive' },
  {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
    config = function()
      require('nvim-tree').setup {}
    end,
  },
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
  { 'lewis6991/gitsigns.nvim' },
  { 'mhartington/formatter.nvim' },
  { 'mg979/vim-visual-multi' },
  { 'folke/which-key.nvim' },
  { 'stevearc/dressing.nvim' },
  {
    'simrat39/symbols-outline.nvim',
    config = function()
      require('symbols-outline').setup {
        auto_close = true,
      }
    end,
  },
  -- Lua
  {
    'gbprod/substitute.nvim',
    config = function()
      require('substitute').setup {
        -- your configuration comes here
        -- or leave it empty to the default settings
        -- refer to the configuration section below
      }
    end,
  },
  { 'linux-cultist/venv-selector.nvim' },
  {
    'stevearc/oil.nvim',
    config = function()
      require('oil').setup { default_file_explorer = false }
    end,
  },
  { 'enircobirto/vim-accent-portuguese' },
  -- { 'ray-x/starry.nvim' },
  { 'ThePrimeagen/vim-be-good' },
  {
    'akinsho/toggleterm.nvim',
    tag = '*',
    config = function()
      require('toggleterm').setup()
    end,
  },
  { 'rhysd/vim-color-spring-night' },
  { 'vim-scripts/seoul256.vim' },
  { 'mattn/invader-vim' },
  { 'easymotion/vim-easymotion' },
  { 'mfussenegger/nvim-dap' },
  { 'mfussenegger/nvim-dap-python' },
  -- {"rcarriga/nvim-dap-ui"},
  { 'enircobirto/dapui-data' },
  { 'wfxr/minimap.vim' },
  { 'nvim-lua/plenary.nvim' },
  {
    'rmagatti/auto-session',
    lazy = false,
    keys = {
      -- Will use Telescope if installed or a vim.ui.select picker otherwise
      { '<leader>wr', '<cmd>SessionSearch<CR>', desc = 'Session search' },
      { '<leader>ws', '<cmd>SessionSave<CR>', desc = 'Save session' },
      { '<leader>wa', '<cmd>SessionToggleAutoSave<CR>', desc = 'Toggle autosave' },
    },

    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
      -- ⚠️ This will only work if Telescope.nvim is installed
      -- The following are already the default values, no need to provide them if these are already the settings you want.
      session_lens = {
        -- If load_on_setup is false, make sure you use `:SessionSearch` to open the picker as it will initialize everything first
        load_on_setup = true,
        previewer = false,
        mappings = {
          -- Mode can be a string or a table, e.g. {"i", "n"} for both insert and normal mode
          delete_session = { 'i', '<C-D>' },
          alternate_session = { 'i', '<C-S>' },
          copy_session = { 'i', '<C-Y>' },
        },
        -- Can also set some Telescope picker options
        -- For all options, see: https://github.com/nvim-telescope/telescope.nvim/blob/master/doc/telescope.txt#L112
        theme_conf = {
          border = true,
          -- layout_config = {
          --   width = 0.8, -- Can set width and height as percent of window
          --   height = 0.5,
          -- },
        },
      },
    },
  },
  {
    'nmac427/guess-indent.nvim',
    config = function()
      require('guess-indent').setup {}
    end,
  },
  {
    'olrtg/nvim-emmet',
    config = function()
      vim.keymap.set({ 'n', 'v' }, '<leader>xe', require('nvim-emmet').wrap_with_abbreviation)
    end,
  },
  { 'barrett-ruth/live-server.nvim' },
  { 'neovim/nvim-lspconfig' },
  { 'jose-elias-alvarez/null-ls.nvim' },
  { 'MunifTanjim/prettier.nvim' },
  { 'tpope/vim-commentary' },
  -- GAMES!!
  { 'alec-gibson/nvim-tetris' },
  { 'seandewar/nvimesweeper' },
  { 'seandewar/killersheep.nvim' },
  { 'rktjmp/playtime.nvim' },
  { 'Eandrju/cellular-automaton.nvim' },
  { 'jim-fx/sudoku.nvim', cmd = 'Sudoku' },
  { 'bluz71/vim-nightfly-colors' },
  { 'hachy/eva01.vim' },
  { 'pauchiner/pastelnight.nvim' },
  -- tailwind-tools.lua
  {
    'luckasRanarison/tailwind-tools.nvim',
    name = 'tailwind-tools',
    build = ':UpdateRemotePlugins',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-telescope/telescope.nvim', -- optional
      'neovim/nvim-lspconfig', -- optional
    },
    opts = {}, -- your configuration
  },
  {
    'Vonr/align.nvim',
    branch = 'v2',
    lazy = true,
    init = function()
      -- Create your mappings here
    end,
  },
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
  },
}
