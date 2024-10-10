return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  config = function()
    require('nvim-tree').setup {
      disable_netrw = false,
      hijack_netrw = false,
      on_attach = function(bufnr)
        local api = require 'nvim-tree.api'

        local function opts(desc)
          return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end

        api.config.mappings.default_on_attach(bufnr)

        vim.keymap.set('n', 'l', api.node.open.edit, opts 'Open')
        vim.keymap.set('n', 'h', api.node.navigate.parent_close, opts 'Close Directory')
        vim.keymap.set('n', 'v', api.node.open.vertical, opts 'Open: Vertical Split')
        vim.keymap.del('n', '<C-k>', { buffer = bufnr })
        vim.keymap.set('n', '<S-k>', api.node.open.preview, opts 'Open Preview')
      end,

      vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>'),
      vim.keymap.set('n', '<leader>ee', ':NvimTreeFindFile<CR>'),
    }
  end,
}
