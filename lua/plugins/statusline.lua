local now = MiniDeps.now

now(function() 
	require('mini.statusline').setup()
	require('mini.icons').setup()
	require('mini.git').setup()
	require('mini.diff').setup()
end)
