local add, now = MiniDeps.add, MiniDeps.now

add('justinsgithub/wezterm-types')

now(function()
	require('mini.pairs').setup()
	require('mini.splitjoin').setup()
	require('mini.jump').setup()
	require('mini.completion').setup({
			snippet_insert = true,
	})
	require('mini.trailspace').setup()
end)
