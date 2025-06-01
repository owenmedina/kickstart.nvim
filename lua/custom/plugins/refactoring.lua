return {
  {
    'ThePrimeagen/refactoring.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
    lazy = false, -- load at startup
    opts = {}, -- use defaults
    config = function(_, opts)
      require('refactoring').setup(opts)
    end,
  },
}
