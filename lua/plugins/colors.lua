local add, now, later = MiniDeps.add, MiniDeps.now, MiniDeps.later

add('scottmckendry/cyberdream.nvim')
add('eldritch-theme/eldritch.nvim')
add('norcalli/nvim-colorizer.lua')

now(function() 
  require('mini.hipatterns').setup({
    highlighters = {
      fixme = { pattern = 'FIXME', group = 'MiniHipatternsFixme' },
      hack  = { pattern = 'HACK',  group = 'MiniHipatternsHack'  },
      todo  = { pattern = 'TODO',  group = 'MiniHipatternsTodo'  },
      note  = { pattern = 'NOTE',  group = 'MiniHipatternsNote'  },
    } 
  })
	require('eldritch').setup({
			transparent = true,
	})
  require('cyberdream').setup({
   transparent = true,
   highlights = {
    LineNr = { bg = 'none' },
    -- CursorLine = { bg = '#243549'},
    CursorLine = { bg = '#2a2d32'},
   },
  })
	require('colorizer').setup()
end)
