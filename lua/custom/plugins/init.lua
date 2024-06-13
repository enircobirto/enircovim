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
    opts = {},
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
  { 'ray-x/starry.nvim' },
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
  { 'Shatur/neovim-session-manager' },
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
}
