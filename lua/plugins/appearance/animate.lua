local now = MiniDeps.now

now(function() 
	local animate = require('mini.animate')
	animate.setup({
		cursor = {
			enable = false,
			timing = animate.gen_timing.quadratic({ easing = 'out', duration = 40, unit = 'total' })
		},
		scroll = {
			enable = true,
			timing = animate.gen_timing.quadratic({ easing = 'out', duration = 100, unit = 'total' })
		}
	
	}) 
end)
