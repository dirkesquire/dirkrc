require('telescope').setup({ file_ignore_patterns = { "node%_modules/.*" } })
require('telescope').setup({ defaults = { path_display={"smart"} } })

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})
vim.keymap.set('n', '<Space>fr', builtin.oldfiles, {})

vim.keymap.set('n', '<Space>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<Space>fh', builtin.help_tags, {})

vim.keymap.set('n', '<Space>gf', builtin.git_files, {})


require("telescope").load_extension('harpoon')
-- :Telescope harpoon marks

require('telescope').load_extension('dap')
-- :Telescope dap commands
-- :Telescope dap configurations
-- :Telescope dap list_breakpoints
-- :Telescope dap variables
-- :Telescope dap frames
