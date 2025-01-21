-- local function tree_cd()
--   require('nvim-tree').change_dir(vim.fn.getcwd())
-- end

require('auto-session').setup {
  log_level = 'error',
  post_restore_cmds = { 'lua require("nvim-tree").change_dir(vim.fn.getcwd())', 'NvimTreeOpen' },
  auto_session_suppress_dirs = nil,
  pre_save_cmds = { 'NvimTreeClose' },
}
