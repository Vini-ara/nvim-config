-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  reload_on_bufenter = false,
  filters = {
    dotfiles = true,
    exclude = {".git", "node_modules", ".cache"},
  },
  highlight_opened_files = true,
  update_focused_file = {
      enable = true,
      update_cwd = true,
      ignore_list = {}
  },
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
    highlight_opened_files = "all",
  },
})
