local now = MiniDeps.now
local opt = vim.opt

now(function() require('mini.basics').setup({
		options = {
				extra_ui = false,
				win_borders = 'bold',
		},
		mappings = {
				windows = true,
		},
}) end)

vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

opt.relativenumber = true

opt.shiftround = true    -- Round indent
opt.shiftwidth = 4       -- Size of an indent

opt.tabstop = 2          -- Number of spaces tabs count for

opt.termguicolors = true

opt.conceallevel = 2
opt.concealcursor = 'nc'

if vim.fn.has('nvim-0.11') == 1 then
		opt.completeopt:append('fuzzy')
else
		vim.opt.completeopt:append('menuone,noselect')
end

opt.pumheight = 10
