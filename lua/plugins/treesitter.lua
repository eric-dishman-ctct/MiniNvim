local add, now, later = MiniDeps.add, MiniDeps.now, MiniDeps.later
local now_if_args = vim.fn.argc(-1) > 0 and now or later

-- Tree-sitter (advanced syntax parsing, highlighting, textobjects) ===========
now_if_args(function()
  add({
    source = 'nvim-treesitter/nvim-treesitter',
    checkout = 'master',
    hooks = { post_checkout = function() vim.cmd('TSUpdate') end },
  })
  add('nvim-treesitter/nvim-treesitter-textobjects')

  add('nvim-treesitter/nvim-treesitter-context')
require'treesitter-context'.setup{
  multiline_threshold = 4, -- Maximum number of lines to show for a single context
  -- Separator between context and content. Should be a single character string, like '-'.
  -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
  separator = '─',
}

  --stylua: ignore
  local ensure_installed = {
    'c',     'cpp',   'css',  'html', 'matlab', 'markdown',
    'javascript', 'json',  'python', 'markdown_inline',
    'xml',          'regex', 'rust', 'toml', 'tsx', 'yaml',
  }

---@diagnostic disable-next-line: missing-fields
  require('nvim-treesitter.configs').setup({
    ensure_installed = ensure_installed,
    highlight = { enable = true },
    incremental_selection = { enable = false },
    textobjects = { enable = false },
    indent = { enable = false },
  })

  -- Disable injections in 'lua' language
  local ts_query = require('vim.treesitter.query')
  local ts_query_set = vim.fn.has('nvim-0.9') == 1 and ts_query.set or ts_query.set_query
  ts_query_set('lua', 'injections', '')
end)
