return {
  vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { noremap = true, silent = true, desc = 'Edit vimrc' }),
  vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { noremap = true, silent = true, desc = 'Move line down' }),
  vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { noremap = true, silent = true, desc = 'Move line up' }),

  vim.keymap.set('n', '<c-k>', ':wincmd k<CR>', { noremap = true, silent = true, desc = 'Move to window above' }),
  vim.keymap.set('n', '<c-j>', ':wincmd j<CR>', { noremap = true, silent = true, desc = 'Move to window below' }),
  vim.keymap.set('n', '<c-h>', ':wincmd h<CR>', { noremap = true, silent = true, desc = 'Move to window left' }),
  vim.keymap.set('n', '<c-l>', ':wincmd l<CR>', { noremap = true, silent = true, desc = 'Move to window right' }),
  -- greatest remap ever
  vim.keymap.set('x', '<leader>p', [["_dP]]),

  -- next greatest remap ever : asbjornHaland
  vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]], { noremap = true, silent = true, desc = 'Copy to clipboard' }),
  vim.keymap.set('n', '<leader>Y', [["+Y]], { noremap = true, silent = true, desc = 'Copy intirre lineto clipboard' }),
  -- Resize panes with Ctrl + Arrow keys
  vim.keymap.set('n', '<leader>rk', ':resize +6<CR>', { noremap = true, silent = true, desc = 'Resize pane up' }),
  vim.keymap.set('n', '<leader>rj', ':resize -6<CR>', { noremap = true, silent = true, desc = 'Resize pane down' }),
  vim.keymap.set('n', '<leader>rh', ':vertical resize -6<CR>', { noremap = true, silent = true, desc = 'Resize pane left' }),
  vim.keymap.set('n', '<leader>rl', ':vertical resize +6<CR>', { noremap = true, silent = true, desc = 'Resize pane right' }),
  vim.keymap.set('n', '<leader>bda', ':bufdo bd<CR>', { noremap = true, silent = true, desc = 'Close all buffers' }),
  vim.keymap.set('n', '<leader>bdc', ':bd<CR>', { noremap = true, silent = true, desc = 'Close all buffers' }),

  vim.keymap.set('n', '<leader>k', '<cmd>cnext<CR>zz'),
  vim.keymap.set('n', '<leader>j', '<cmd>cprev<CR>zz'),
  vim.keymap.set('n', 'q', function()
    if vim.bo.buftype == 'quickfix' then
      vim.cmd 'cclose'
    else
      vim.cmd 'copen'
    end
  end, { noremap = true, silent = true }),
}
