--Bootstrap mini
local path_package = vim.fn.stdpath('data') .. '/site/'
local mini_path = path_package .. 'pack/deps/start/mini.nvim'
if not vim.loop.fs_stat(mini_path) then
	vim.cmd('echo "Installing `mini.nvim`" | redraw')
	local clone_cmd = {
		'git', 'clone', '--filter=blob:none',
		'https://github.com/echasnovski/mini.nvim', mini_path
	}
	vim.fn.system(clone_cmd)
	vim.cmd('packadd mini.nvim | helptags ALL')
	vim.cmd('echo "Installed `mini.nvim`" | redraw')
end

-- Allow for use of add, now and later
require('mini.deps').setup({ path = { package = path_package } })
require('config')
require('plugins')
require('functions')

-- LSP Setup
vim.lsp.enable({
  'clangd',
  'matlab_ls',
  'jsonls',
  'lemminx',
  'ts_ls',
  'lua_ls',
})

_G.Config = {}

