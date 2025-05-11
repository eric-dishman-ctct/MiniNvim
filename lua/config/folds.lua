-- Folds
vim.opt.foldcolumn = '1' -- '0' is not bad
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.opt.foldtext = ''

vim.opt.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.opt.foldlevelstart = 2
vim.opt.foldnestmax = 4

vim.opt.foldenable = true
