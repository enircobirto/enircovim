local wk = require 'which-key'

-- leader mappings
wk.add {
  { '<leader>c', '<CMD>Commentary<CR>', desc = 'Comment line', nowait = true, remap = false },
  { '<leader>ea', '<CMD>EasyAlign<CR>', desc = 'Easy Align', nowait = true, remap = false },
  { '<leader>ee', "<CMD>lua vim.diagnostic.open_float(0, {scope='line'})<CR>", desc = 'Show diagnostics', nowait = true, remap = false },
  { '<leader>f', group = 'Files', nowait = true, remap = false },
  { '<leader>fa', '<CMD>Telescope find_files follow=true no_ignore=true hidden=true <cr>', desc = 'Find all files', nowait = true, remap = false },
  { '<leader>fb', '<CMD>Telescope buffers<cr>', desc = 'See buffers', nowait = true, remap = false },
  { '<leader>ff', '<CMD>Telescope find_files<cr>', desc = 'Find file', nowait = true, remap = false },
  { '<leader>fw', '<CMD>Telescope live_grep<cr>', desc = 'Live grep', nowait = true, remap = false },
  { '<leader>k', '<CMD>bdelete<CR>', desc = 'Kill Buffer', nowait = true, remap = false },
  { '<leader>l', group = 'LSP stuff', nowait = true, remap = false },
  { '<leader>lf', '<CMD>lua vim.lsp.buf.format()<CR>', desc = 'Format', nowait = true, remap = false },
  { '<leader>lr', '<CMD>lua vim.lsp.buf.rename()<CR>', desc = 'Rename', nowait = true, remap = false },
  { '<leader>m', '<CMD>MinimapToggle<CR>', desc = 'MinimapToggle', nowait = true, remap = false },
  { '<leader>n', '<CMD>noh<CR>', desc = 'No Highlight', nowait = true, remap = false },
  { '<leader>o', '<CMD>SymbolsOutline<CR>', desc = 'Symbols Outline', nowait = true, remap = false },
  { '<leader>p', '<CMD>Prettier<CR>', desc = 'Prettier [Format document]', nowait = true, remap = false },
  { '<leader>q', '<CMD>q<CR>', desc = 'Quit', nowait = true, remap = false },
  { '<leader>s', '<CMD>so<CR>', desc = 'Source', nowait = true, remap = false },
  { '<leader>u', '<CMD>UndotreeToggle<CR><CMD>NvimTreeToggle<CR>', desc = 'UndotreeToggle', nowait = true, remap = false },
  { '<leader>w', '<CMD>w!<CR>', desc = 'Save', nowait = true, remap = false },
}

-- no prefix mappings
wk.add {
  { 'QA', '<CMD>qa!<CR>', desc = 'Quit ALL !', nowait = true, remap = false },
  { 'QQ', '<CMD>qa <CR>', desc = 'Quit ALL *', nowait = true, remap = false },
  { 'QW', '<CMD>wqa <CR>', desc = 'Save + Quit ALL', nowait = true, remap = false },
  { 'cs', '<CMD>Telescope colorscheme<CR>', desc = 'Change colorscheme', nowait = true, remap = false },
  { 'g', group = "Navigation ('Go')", nowait = true, remap = false },
  { 'gd', '<CMD>Telescope lsp_definitions<CR>', desc = 'Go to definitions', nowait = true, remap = false },
  { 'gi', '<CMD>Telescope lsp_implementations<CR>', desc = 'Go to references', nowait = true, remap = false },
  { 'gr', '<CMD>Telescope lsp_references<CR>', desc = 'Go to references', nowait = true, remap = false },
}
