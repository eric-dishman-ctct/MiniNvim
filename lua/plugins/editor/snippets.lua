local add, now = MiniDeps.add, MiniDeps.now

add('rafamadriz/friendly-snippets')


now(function()
local gen_loader = require('mini.snippets').gen_loader
require('mini.snippets').setup({
		snippets = {
				gen_loader.from_lang(),
		},
})

end)
