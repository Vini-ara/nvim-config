require("nvim-tree").setup({
  reload_on_bufenter = false,
  filters = {
    dotfiles = true,
    exclude = {".git", "node_modules", ".cache"},
  },
  update_focused_file = {
      enable = true,
      update_cwd = true,
      ignore_list = {}
  },
  sort_by = "case_sensitive",
  view = {
    width = 25,
  },
  renderer = {
    group_empty = true,
    highlight_opened_files = "all",
  },
})
