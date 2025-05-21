vim.api.nvim_create_augroup('MyColors', { clear = true })
vim.api.nvim_create_autocmd('ColorScheme', {
group = 'MyColors',
pattern = '*',
callback = function()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
    vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
    vim.api.nvim_set_hl(0, "VertSplit", { bg = "none" })
		-- OrgAgenda
		vim.api.nvim_set_hl(0, "@org.agenda.deadline", { fg = "#F16C75" })
		vim.api.nvim_set_hl(0, "@org.agenda.scheduled", { fg = "#F7C67F" })
end,
})
