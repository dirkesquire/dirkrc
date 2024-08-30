local harpoon = require("harpoon");
harpoon.setup({ menu = { width = 120, height = 10 } })


vim.keymap.set('n', '<Space>ha', function() require("harpoon.mark").add_file() end)
vim.keymap.set('n', '<Space>hm', function() require("harpoon.mark").add_file() end)

vim.keymap.set('n', 'hs', function() require("harpoon.ui").toggle_quick_menu() end)
vim.keymap.set('n', '<leader>,', function() require("harpoon.ui").toggle_quick_menu() end)

