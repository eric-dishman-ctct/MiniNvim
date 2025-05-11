local map = vim.keymap.set

-- Snacks scratch
map('n', "<leader>.",  function() Snacks.scratch() end, { desc = "Toggle Scratch Buffer" })
map('n', "<leader>S",  function() Snacks.scratch.select() end, { desc = "Select Scratch Buffer" })

map('n', '-',':lua MiniFiles.open()<cr>', { desc = 'Explore Files'})

-- Pick mappings
map('n', '<leader>ff', '<cmd>Pick files<cr>', { desc = 'Find Files'})
map('n', '<leader>fb', '<cmd>Pick buffers<cr>', { desc = 'Find Buffers'})
map('n', '<leader>fh', '<cmd>Pick help<cr>', { desc = 'Find Help'})

-- Source a file
map('n', '<leader>sf', '<cmd>so<cr>', { desc = 'Source File'})

-- Inspect Treesitter Abstract Syntax Tree
map('n', '<leader>ci', '<cmd>InspectTree<cr>', { desc = '󰍉 Inspect AST'})

-- Set the working directory to the path of the current buffer.
vim.keymap.set('n', '<leader>bcd', function()
  vim.cmd('cd ' .. vim.fn.expand '%:p:h')
end, { desc = 'Set working directory to path of buffer.' })
-- Git related
map('n', '<leader>gs', '<cmd>lua MiniGit.show_at_cursor()<cr>', { desc = ' Show at cursor'})

-- Better scroll
map('n', '<C-d>', '<C-d>zz', { desc = 'Centered scroll down'})
map('n', '<C-u>', '<C-u>zz', { desc = 'Centered scroll up'})

-- Keep search terms in the middle
map('n', 'n', 'nzzzv', { desc = 'Search forward centered' })
map('n', 'N', 'Nzzzv', { desc = 'Search backwards centered' })

-- quit
map('n', '<leader>qq', '<cmd>qa<cr>', { desc = 'Quit All' })

-- save and quit
map('n', '<leader>wq', '<cmd>wq<cr>', { desc = 'Save and Quit' })

-- save current buffer
map('n', '<leader>bs', '<cmd>w<cr>', { desc = 'Save current buffer' })

-- delete current buffer from memory
map('n', '<leader>bd', ':bdelete<cr>', { desc = 'Delete the current buffer' })

-- better indenting
map('v', '<', '<gv')
map('v', '>', '>gv')

-- clear highlighting
map('n', '<esc>', '<cmd>nohl<cr>')

-- keep cursor in the same place
map('n', 'J', 'mzJ`z')
