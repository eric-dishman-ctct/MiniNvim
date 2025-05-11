local add,now = MiniDeps.add, MiniDeps.now

add('folke/snacks.nvim')

now(function() require('snacks').setup({
		scratch = { enabled = true },
}) end)

