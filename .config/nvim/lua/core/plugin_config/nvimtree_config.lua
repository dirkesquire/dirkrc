require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 40,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
--vim.keymap.set('n', '<c-n>', ':NvimTreeToggle<CR>')

-- Shortcut to change the default width in Ex mode:
--require("nvim-tree").setup({view={width=40}})
