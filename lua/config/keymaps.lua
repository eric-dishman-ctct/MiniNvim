local map = vim.keymap.set

-- Snacks scratch
map('n', "<leader>.",  function() Snacks.scratch() end, { desc = "Toggle Scratch Buffer" })
map('n', "<leader>S",  function() Snacks.scratch.select() end, { desc = "Select Scratch Buffer" })

map('n', '-',':lua MiniFiles.open()<cr>', { silent = true, desc = 'Explore Files'})

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
map('n','<C-d>',require('functions.custom_scroll').scroll_down_and_center,
		{noremap = true, silent = true, desc = 'Smart scroll down'}
)
map('n','<C-u>',require('functions.custom_scroll').scroll_up_and_center,
		{noremap = true, silent = true, desc = 'Smart scroll up'}
)

-- Line scrolling
-- map('n','<C-y>', '<C-y>',{ desc = 'Center line scroll up' })
-- map('n','<C-e>', '<C-e>',{ desc = 'Center line scroll down' })

map('n', '<C-j>', 'jzz', { desc = 'Centered line scrolling down' })
map('n', '<C-k>', 'kzz', { desc = 'Centered line scrolling up' })

-- Better section jump
map('n','{', '{zz', { desc = 'Centered section jump up' })
map('n','}', '}zz', { desc = 'Centered section jump down' })

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

-- completion

local keycode = vim.keycode or function(x)
return vim.api.nvim_replace_termcodes(x, true, true, true)
end
local keys = {
['cr']        = keycode('<CR>'),
['ctrl-y']    = keycode('<C-y>'),
['ctrl-y_cr'] = keycode('<C-y><CR>'),
}

_G.cr_action = function()
if vim.fn.pumvisible() ~= 0 then
		-- If popup is visible, confirm selected item or add new line otherwise
		local item_selected = vim.fn.complete_info()['selected'] ~= -1
		return item_selected and keys['ctrl-y'] or keys['ctrl-y_cr']
else
		-- If popup is not visible, use plain `<CR>`. You might want to customize
		-- according to other plugins. For example, to use 'mini.pairs', replace
		-- next line with `return require('mini.pairs').cr()`
		return keys['cr']
end
end

vim.keymap.set('i', '<CR>', 'v:lua._G.cr_action()', { expr = true })

-- better indenting
map('v', '<', '<gv')
map('v', '>', '>gv')

-- clear highlighting
map('n', '<esc>', '<cmd>nohl<cr>')

-- keep cursor in the same place
map('n', 'J', 'mzJ`z')
