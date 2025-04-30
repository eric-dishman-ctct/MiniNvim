require('mini.deps')

local now = MiniDeps.now

now(function() vim.cmd.colorscheme('minischeme') end)
