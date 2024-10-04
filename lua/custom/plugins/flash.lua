return {
  'folke/flash.nvim',
  config = function()
    vim.api.nvim_set_hl(0, 'FlashLabel', { bg = '#063970', fg = '#ffffff', bold = true })
  end,
  event = 'VeryLazy',
  ---@type Flash.Config
  opts = {
    label = {
      uppercase = false, -- Set this to false to disallow uppercase labels
    },
  },

    -- stylua: ignore
  keys = {
    { "<leader>ss", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "[S]earch [S]search whith flash" },
    { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
     },
}
