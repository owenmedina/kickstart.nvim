-- Automatically fill in the word under cursor, with expr
vim.keymap.set('n', '<leader>rn', function()
  return ':IncRename ' .. vim.fn.expand '<cword>'
end, { expr = true, desc = 'IncRename w/ current word' })

local live_rename = require 'live-rename'
-- Rename into insert mode with empty text
vim.keymap.set('n', '<leader>R', live_rename.map { text = '', insert = true }, { desc = 'Live Rename (Insert)' }) -- :contentReference[oaicite:5]{index=5}

local refactor = require 'refactoring'

-- Extract a function from visual or normal selection
vim.keymap.set({ 'n', 'x' }, '<leader>re', function()
  return refactor.refactor 'Extract Function'
end, { expr = true, desc = 'Extract Function' }) -- :contentReference[oaicite:7]{index=7}

-- Extract variable
vim.keymap.set({ 'n', 'x' }, '<leader>rv', function()
  return refactor.refactor 'Extract Variable'
end, { expr = true, desc = 'Extract Variable' }) -- :contentReference[oaicite:8]{index=8}

-- Inline variable or function
vim.keymap.set({ 'n', 'x' }, '<leader>ri', function()
  return refactor.refactor 'Inline Variable'
end, { expr = true, desc = 'Inline Variable' }) -- :contentReference[oaicite:9]{index=9}

-- Extract block
vim.keymap.set({ 'n', 'x' }, '<leader>rbb', function()
  return refactor.refactor 'Extract Block'
end, { expr = true, desc = 'Extract Block' }) -- :contentReference[oaicite:10]{index=10}

-- Prompt for any refactor
vim.keymap.set({ 'n', 'x' }, '<leader>rr', function()
  return refactor.select_refactor()
end, { desc = 'Select Refactor' }) -- :contentReference[oaicite:11]{index=11}

-- Duplicate any visual selection immediately below with a single D
vim.keymap.set('x', 'D', [[:t'><CR>]], { noremap = true, silent = true, desc = 'Duplicate selection below' })
