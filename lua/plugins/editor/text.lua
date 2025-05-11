local now = MiniDeps.now

now(function() 
	require('mini.pairs').setup() 
	require('mini.splitjoin').setup()
	require('mini.jump').setup()
end)
