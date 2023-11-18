require("nvim-tree").setup({
  reload_on_bufenter = true,
  filters = {
    dotfiles = true,
    exclude = {".env", ".env.local"},
  },
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
