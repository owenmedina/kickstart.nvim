return {
  'akinsho/flutter-tools.nvim',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim',
  },
  config = function()
    require('flutter-tools').setup {
      ui = {
        border = 'rounded',
        notification_style = 'plugin',
      },
      decorations = {
        statusline = {
          app_version = false,
          device = true,
          project_config = false,
        },
      },
      debugger = {
        enabled = false,
        run_via_dap = false,
      },
      widget_guides = {
        enabled = false,
      },
      closing_tags = {
        highlight = 'ErrorMsg',
        prefix = '>',
        enabled = true,
      },
      dev_log = {
        enabled = true,
        notify_errors = false,
        open_cmd = 'tabedit',
      },
      dev_tools = {
        autostart = false,
        auto_open_browser = false,
      },
      outline = {
        open_cmd = '30vnew',
        auto_open = false,
      },
      -- Disable LSP integration to avoid conflicts
      lsp = {
        enabled = false, -- Add this line
      },
    }

    -- Set up keybindings
    vim.keymap.set('n', '<leader>fr', ':FlutterRun<CR>', { desc = 'Flutter Run' })
    vim.keymap.set('n', '<leader>fR', ':FlutterReload<CR>', { desc = 'Flutter Reload' })
    vim.keymap.set('n', '<leader>fq', ':FlutterQuit<CR>', { desc = 'Flutter Quit' })
    vim.keymap.set('n', '<leader>fd', ':FlutterDevices<CR>', { desc = 'Flutter Devices' })
  end,
}
