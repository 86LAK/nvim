-- Inside the root level you can find the lazy loading of the plugin
-- https://github.com/akinsho/toggleterm.nvim

vim.keymap.set('n', '<leader>tt', '<cmd>ToggleTerm<cr>', { noremap = true, silent = true })

vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true }) -- Escape to normal mode in terminal
vim.keymap.set('t', '<leader>tt', [[<C-\><C-n><cmd>ToggleTerm<cr>]], { noremap = true, silent = true }) -- Close terminal with <leader>tt
