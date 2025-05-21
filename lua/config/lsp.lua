-- TODO: Should I have all these if client statements? Is there another way to do this?

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    -- print("Vader rules")
    if not client then return end
    -- print("Join the dark side")

    if client:supports_method('callHierarchy/incomingCalls') then

    end

    if client:supports_method('callHierarchy/outgoingCalls') then

    end

    if client:supports_method('textDocument/codeAction') then
      vim.keymap.set('n', '<leader>ca',
        function()
          vim.lsp.buf.code_action()
        end,
        { desc = 'Code Action' })
    end

    if client:supports_method('textDocument/completion') then
      -- Enable auto-completion
      vim.lsp.completion.enable(false, client.id, args.buf, { autotrigger = true })
    end

    if client:supports_method('textDocument/declaration') then

    end

    if client:supports_method('textDocument/definition') then

    end

    if client:supports_method('textDocument/diagnostic') then

    end

    if client:supports_method('textDocument/documentHighlight') then

    end

    if client:supports_method('textDocument/documentSymbol') then

    end

    -- local current_bufnr = vim.api.nvim_get_current_buf()
    -- -- P(current_bufnr)
    -- local clients = vim.lsp.get_clients({ bufnr = current_bufnr })
    -- -- P(clients)
    -- for _, thisClient in pairs(clients) do
    --   local client_id = thisClient['id']
    --   -- P(client_id)
    --   -- P(vim.uri_from_bufnr(client_id))
    --   local params = { uri = vim.uri_from_bufnr(client_id) }
    --   P({ textDocument = params })
    --   -- thisClient.request('textDocument/foldingRange', { textDocument = params }, P(), client_id)
    --   -- thisClient:request('textDocument/formatting')
    -- end


    if client:supports_method('textDocument/foldingRange') then
      -- local win = vim.api.nvim_get_current_win()
      -- vim.wo[win][0].foldmethod = 'expr'
      -- vim.wo[win][0].foldexpr = 'v:lua.vim.lsp.foldexpr()'
    end

    if client:supports_method('textDocument/formatting') then
      vim.keymap.set('n', '<leader>cf',
        function()
          vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
        end,
        { desc = 'Format' })

      -- Format the current buffer on save
      -- vim.api.nvim_create_autocmd('BufWritePre', {
      --   buffer = args.buf,
      --   callback = function()
      --     vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
      --   end,
      -- })
    end

    if client:supports_method('textDocument/hover') then

    end

    if client:supports_method('textDocument/implementation') then

    end

    if client:supports_method('textDocument/inlayHint') then

    end

    if client:supports_method('textDocument/prepareTypeHierarchy') then

    end

    if client:supports_method('textDocument/publishDiagnostics') then

    end

    if client:supports_method('textDocument/rangeFormatting') then

    end

    if client:supports_method('textDocument/rangesFormatting') then

    end

    if client:supports_method('textDocument/refrences') then

    end

    if client:supports_method('textDocument/rename') then
      vim.keymap.set('n', '<leader>cr',
        function()
          vim.lsp.buf.rename()
        end, { desc = 'Rename Symbol' })
    end

    if client:supports_method('textDocument/semanticTokens/full') then

    end

    if client:supports_method('textDocument/semanticTokens/full/delta') then

    end

    if client:supports_method('textDocument/signatureHelp') then

    end

    if client:supports_method('textDocument/typeDefinition*') then

    end

    if client:supports_method('typeHierarchy/subtypes') then

    end

    if client:supports_method('typeHierarchy/supertypes') then

    end

    if client:supports_method('window/logMessage') then

    end

    if client:supports_method('window/showMessage') then

    end

    if client:supports_method('window/showDocument') then

    end

    if client:supports_method('window/showMessageRequest') then

    end

    if client:supports_method('workspace/applyEdit') then

    end

    if client:supports_method('workspace/configuration') then

    end

    if client:supports_method('workspace/executeCommand') then

    end

    if client:supports_method('workspace/inlayHint/refresh') then

    end

    if client:supports_method('workspace/symbol') then

    end

    if client:supports_method('workspace/workspaceFolders') then

    end
  end,
})
