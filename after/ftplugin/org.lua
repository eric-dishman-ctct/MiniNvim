vim.opt_local.textwidth = 80
vim.opt_local.autoindent = true
vim.opt_local.smartindent = false
vim.opt_local.cindent = false
vim.opt_local.formatoptions:append('t')
vim.opt_local.formatoptions:remove('r')
-- OrgMode
require('treesitter-context').disable()
vim.keymap.set('i', '<S-CR>', '<cmd>lua require("orgmode").action("org_mappings.meta_return")<CR>')
vim.b.minihipatterns_disable = true
