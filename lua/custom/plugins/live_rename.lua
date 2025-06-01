return {
  {
    'saecki/live-rename.nvim',
    config = function()
      require('live-rename').setup {
        prepare_rename = true,
        show_other_ocurrences = true,
        use_patterns = true,
      }
    end,
  },
}
