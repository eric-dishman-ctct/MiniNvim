local now = MiniDeps.now

now(function()
	require('mini.pairs').setup()
	require('mini.splitjoin').setup()
	require('mini.jump').setup()
	require('mini.completion').setup({
			snippet_insert = true,
	})
	require('mini.trailspace').setup()
end)
