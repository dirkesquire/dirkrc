require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 35,
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
