-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'numToStr/Comment.nvim',
    opts = {
      -- add any options here
    },
  },
  -- {
  --   'nvim-tree/nvim-tree.lua',
  --   version = '*',
  --   lazy = false,
  --   dependencies = {
  --     'nvim-tree/nvim-web-devicons',
  --   },
  --   config = function()
  --     require('nvim-tree').setup {}
  --   end,
  -- },
  {
    'xiantang/darcula-dark.nvim',
    priority = 100, -- Make sure to load this before all the other start plugins.
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
    },
    config = function()
      vim.cmd.colorscheme 'darcula-dark'
    end,
  },
  {
    'nvim-telescope/telescope-file-browser.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
    config = function()
      vim.keymap.set('n', '<space>fb', ':Telescope file_browser<CR>')
    end,
  },
  {
    'folke/flash.nvim',
    config = function()
      vim.api.nvim_set_hl(0, 'FlashLabel', { bg = '#063970', fg = '#ffffff', bold = true })
    end,
    event = 'VeryLazy',
    ---@type Flash.Config
    opts = {},
  -- stylua: ignore
  keys = {
    { "<leader>ss", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
     },
  },
}
