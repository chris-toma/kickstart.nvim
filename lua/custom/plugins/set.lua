return {
  vim.keymap.set('n', '<leader>pv', vim.cmd.Ex),
  vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv"),
  vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv"),

  vim.keymap.set('n', '<c-k>', ':wincmd k<CR>'),
  vim.keymap.set('n', '<c-j>', ':wincmd j<CR>'),
  vim.keymap.set('n', '<c-h>', ':wincmd h<CR>'),
  vim.keymap.set('n', '<c-l>', ':wincmd l<CR>'),
  -- greatest remap ever
  vim.keymap.set('x', '<leader>p', [["_dP]]),

  -- next greatest remap ever : asbjornHaland
  vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]]),
  vim.keymap.set('n', '<leader>Y', [["+Y]]),
  -- Resize panes with Ctrl + Arrow keys
  vim.keymap.set('n', '<C-Up>', ':resize +2<CR>', { noremap = true, silent = true }),
  vim.keymap.set('n', '<C-Down>', ':resize -2<CR>', { noremap = true, silent = true }),
  vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', { noremap = true, silent = true }),
  vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', { noremap = true, silent = true }),
}
