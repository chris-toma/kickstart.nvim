return {
  'chris-toma/darcula-dark.nvim',
  priority = 100, -- Make sure to load this before all the other start plugins.
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    vim.cmd.colorscheme 'darcula-dark'
  end,
}
