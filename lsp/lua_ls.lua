return {
  cmd = {
    'lua-language-server',
  },
  filetypes = {
    'lua',
  },
  root_markers = {
    '.luarc.json',
    '.luarc.jsonc',
    '.luacheckrc',
    '.stylua.toml',
    'stylua.toml',
    'selene.toml',
    'selene.yml',
    '.git',
  },
  single_file_support = true,
  settings = {
    Lua = {
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {
          'vim',
          'bufnr',
        },
      },
    },
  },
  log_level = vim.lsp.protocol.MessageType.Warning,
}
