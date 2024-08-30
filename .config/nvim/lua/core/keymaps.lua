-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- Tabs
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- Turn off search
vim.keymap.set('n', '<leader>cs', ':nohlsearch<CR>')

-- Prettier
vim.keymap.set('n', '<leader>gpc', ':!pnpx prettier "%" --check<CR>')
vim.keymap.set('n', '<leader>gp', ':!pnpx prettier "%" --write<CR><CR>')
vim.keymap.set('n', '<leader>gpl', ':!pnpx prettier "%" --write --print-width=200<CR><CR>')

-- Hello, World
vim.keymap.set('n', '<leader>hw', function() print("Hello, World!") end)

-- Saving
vim.keymap.set('i', '<C-s>', '<Esc>:w<cr>')
vim.keymap.set('n', '<C-s>', ':w<cr>')

-- Diagnostic keymaps
-- Top two are builtin
--vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
--vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
-- <leader>d  Opens diagnostic message for the error you are over
vim.keymap.set('n', '<leader>df', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>do', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

--vim.keymap.set('n', 'E', '$')
--vim.keymap.set('n', 'B', '^')
