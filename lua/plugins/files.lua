require('mini.deps')

local now = MiniDeps.now

now(function() require('mini.files').setup() end)
