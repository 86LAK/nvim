-- Tabs
vim.opt.termguicolors = true
require('bufferline').setup {}

local function delete_buffer(bufnum)
  -- Check if the buffer exists and is valid
  if vim.api.nvim_buf_is_valid(bufnum) and vim.api.nvim_buf_get_option(bufnum, 'buflisted') then
    vim.api.nvim_buf_delete(bufnum, { force = true })
  end
end

-- Closes the current buffer on leader w c
vim.keymap.set('n', '<leader>wc', function()
  local bufnum = vim.api.nvim_get_current_buf()
  delete_buffer(bufnum)
end, { noremap = true, silent = true, desc = 'Close the current buffer' })

-- Switches to the next buffer on leader w n
vim.keymap.set('n', '<leader>wn', function()
  vim.cmd 'BufferLineCycleNext'
end, { noremap = true, silent = true, desc = 'Switch to the next buffer' })

-- Switches to the previous buffer on leader w p
vim.keymap.set('n', '<leader>wp', function()
  vim.cmd 'BufferLineCyclePrev'
end, { noremap = true, silent = true, desc = 'Switch to the previous buffer' })

-- Lazygit
vim.keymap.set('n', '<leader>wg', function()
  require('snacks').lazygit.open()
end, { desc = 'Open lazygit' })
