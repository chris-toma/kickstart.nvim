return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration

    -- Only one of these is needed.
    'nvim-telescope/telescope.nvim', -- optional
    'ibhagwan/fzf-lua', -- optional
    'echasnovski/mini.pick', -- optional
  },
  config = true,
  vim.keymap.set('n', '<Leader>g', ':Neogit<CR>', { silent = true }),
  vim.keymap.set('n', '<Leader>gc', ':Neogit commit<CR>', { silent = true }),
}
