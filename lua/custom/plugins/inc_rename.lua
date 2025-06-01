return {
  {
    'smjonas/inc-rename.nvim',
    cmd = 'IncRename', -- lazy-load when :IncRename is called
    config = function()
      require('inc_rename').setup()
    end,
  },
}
