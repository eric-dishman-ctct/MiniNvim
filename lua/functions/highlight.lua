local function highlight_current_line(highlight_group)
		local line_number = vim.api.nvim_win_get_cursor(0)[1]

		vim.api.nvim_buf_add_highlight(0, -1, highlight_group, line_number - 1, 0, 80)

end
