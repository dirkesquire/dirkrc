require('gitsigns').setup()

vim.keymap.set('n', '<leader>sh', ':Gitsigns stage_hunk<CR>')
vim.keymap.set('n', '<leader>hn', ':Gitsigns next_hunk<CR>')
vim.keymap.set('n', '<leader>hp', ':Gitsigns prev_hunk<CR>')
