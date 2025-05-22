vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)

		if not client then return end

		local map = vim.keymap.set

		if client:supports_method('textDocument/codeAction') then
			map('n', '<leader>ca',
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
			map('n', 'gD',
				function()
					vim.lsp.buf.declaration()
				end,
				{ buffer = args.buf, noremap = true, silent = true, desc = 'Go to Declaration' }
			)
		end

		if client:supports_method('textDocument/definition') then
			map('n', 'gd', function() vim.lsp.buf.definition() end,
				{ buffer = args.buf, noremap = true, silent = true, desc = 'Go to Definition' }
			)
		end

		if client:supports_method('textdocument/references') then
			map('n', 'gr', function()
					vim.lsp.buf.references()
				end,
				{ buffer = args.buf, noremap = true, silent = true, desc = 'Go to References' }
			)
		end

		if client:supports_method('textDocument/formatting') then
			map('n', '<leader>cf',
				function()
					vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
				end,
				{ desc = 'Format' })
		end

		if client:supports_method('textDocument/hover') then
			map('n', 'K', function() vim.lsp.buf.hover() end,
				{ buffer = args.buf, noremap = true, silent = true, desc = 'Hover Documentation' }
			)
		end

		if client:supports_method('textDocument/implementation') then
			map('n', 'gi',
				function()
					vim.lsp.buf.implementation()
				end,
				{ buffer = args.buf, noremap = true, silent = true, desc = 'Go to Implementation' }
			)
		end

		if client:supports_method('textDocument/rename') then
			map('n', '<leader>cr',
				function()
					vim.lsp.buf.rename()
				end, { desc = 'Rename Symbol' })
		end

		if client:supports_method('textDocument/signatureHelp') then
			map('i', '<C-k>',
				function()
					vim.lsp.buf.signature_help()
				end,
				{ buffer = args.buf, noremap = true, silent = true, desc = 'Show Signature Help' }
			)
			map('n', '<leader>cs',
				function()
					vim.lsp.buf.signature_help()
				end,
				{ buffer = args.buf, noremap = true, silent = true, desc = 'Show Signature Help' }
			)
		end

		if client:supports_method('textDocument/typeDefinition') then
			map('n', 'gy',
				function()
					vim.lsp.buf.type_definition()
				end,
				{ buffer = args.buf, noremap = true, silent = true, desc = 'Go to Type Definitions' }
			)
		end

		map('n', '[d', function() vim.diagnostic.jump({count = -1, float = false }) end,
			{ buffer = args.buf, noremap = true, silent = true, desc = 'Previous Diagnostic' })
		map('n', ']d', function() vim.diagnostic.jump({count = 1, float = false }) end,
			{ buffer = args.buf, noremap = true, silent = true, desc = 'Next Diagnostic' })
		map('n', '<leader>e', function() vim.diagnostic.open_float() end,
			{ buffer = args.buf, noremap = true, silent = true, desc = 'Show Line Diagnostics' })
	end,
})
