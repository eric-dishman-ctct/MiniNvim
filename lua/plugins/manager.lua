local path_package = vim.fn.stdpath('data') .. 'site/'
require('mini.deps').setup({ path = { package = path_package } })

local add, now, later = MiniDeps.add, MiniDeps.now, MiniDeps.later

now(function()
	vim.o.termguicolors = true
	vim.cmd('colorscheme randomhue')
end)
