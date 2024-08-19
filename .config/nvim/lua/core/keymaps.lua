-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Prettier
vim.keymap.set('n', '<leader>gpc', ':!pnpx prettier "%" --check<CR>')
vim.keymap.set('n', '<leader>gp', ':!pnpx prettier "%" --write<CR><CR>')
vim.keymap.set('n', '<leader>gpl', ':!pnpx prettier "%" --write --print-width=200<CR><CR>')

-- Hello, World
vim.keymap.set('n', '<leader>hw', function() print("Hello, World!") end)
