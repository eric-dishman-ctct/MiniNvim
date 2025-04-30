local path_package = vim.fn.stdpath('data') .. 'site/'
require('mini.deps').setup({ path = { package = path_package } })
