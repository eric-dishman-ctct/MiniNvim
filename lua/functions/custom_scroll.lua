local M = {}
-- This class implements custom scroll up and down functionality while keeping the cursor centered in the view port
function M.scroll_down_and_center()
  local scroll_value = vim.wo.scroll
  local current_line, current_col = unpack(vim.api.nvim_win_get_cursor(0))
  local file_last_line = vim.fn.line('$') -- Get total lines in the buffer

  if current_line < scroll_value then
    -- If current line is less than 'scroll_value' (e.g., Line 1 when scroll_value is 16):
    -- 1. Jump cursor to the 'scroll_value'-th line, preserving column.
    vim.api.nvim_win_set_cursor(0, {scroll_value, current_col})
    -- 2. Center this new line ('scroll_value').
    vim.api.nvim_command('normal! zz')
  else
    -- Otherwise (if cursor is already at or beyond the 'scroll_value'-th line):
    -- 1. Calculate next cursor position, like <C-d> would.
    local target_line = current_line + scroll_value
    if target_line > file_last_line then
      target_line = file_last_line -- Ensure we don't go past the end of the buffer
    end

    -- 2. Move the cursor directly to the target line.
    vim.api.nvim_win_set_cursor(0, {target_line, current_col})

    -- 3. Schedule 'zz' to center this new target_line after Neovim
    --    has processed the cursor move and adjusted the view if necessary.
    vim.schedule(function()
      vim.api.nvim_command('normal! zz')
    end)
  end
end

function M.scroll_up_and_center()
  local scroll_value = vim.wo.scroll
  local current_line, current_col = unpack(vim.api.nvim_win_get_cursor(0))
  local file_last_line = vim.fn.line('$')
  local first_buffer_line = 1 -- Typically line 1

  -- Condition for special behavior: cursor is within 'scroll_value - 1' lines from the end.
  -- The S-th line from the bottom is 'file_last_line - scroll_value + 1'.
  -- If current_line is greater than this, it's in the "special zone".
  local s_th_line_from_bottom = file_last_line - scroll_value + 1

  if current_line > s_th_line_from_bottom and s_th_line_from_bottom >= first_buffer_line then
    -- If current line is "close to the bottom" (above the S-th line from bottom)
    -- AND the S-th line from bottom is a valid line number (not less than 1).
    -- 1. Jump cursor to the 'S-th line from the bottom'.
    vim.api.nvim_win_set_cursor(0, {s_th_line_from_bottom, current_col})
    -- 2. Center this new line.
    vim.api.nvim_command('normal! zz')
  else
    -- Otherwise (cursor is "far enough" from the bottom, or buffer is too short for special handling):
    -- 1. Calculate previous cursor position, like <C-u> would.
    local target_line = current_line - scroll_value
    if target_line < first_buffer_line then
      target_line = first_buffer_line -- Ensure we don't go before the start of the buffer
    end

    -- 2. Move the cursor directly to the target line.
    vim.api.nvim_win_set_cursor(0, {target_line, current_col})

    -- 3. Schedule 'zz' to center this new target_line.
    vim.schedule(function()
      vim.api.nvim_command('normal! zz')
    end)
  end
end

return M
