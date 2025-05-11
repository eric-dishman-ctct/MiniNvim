-- Function to refile to a custom file
function RefileToCustomFile()
  -- Prompt the user for the target file
  local target_file = vim.fn.input('Enter the target file path: ')

  -- Set the refile target to the user-provided file
  vim.g.org_refile_targets = { target_file }

  -- Refile the current heading
  vim.cmd('OrgRefile')
end

-- Keybinding to call the refile function
vim.api.nvim_set_keymap('n', '<leader>onf', ':lua RefileToCustomFile()<CR>', { noremap = true, silent = true })

