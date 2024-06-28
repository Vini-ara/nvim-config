return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    local cattpuccin = require("catppuccin")
    cattpuccin.setup {
      flavor = "macchiato",
      transparent_background = true,
    }
    vim.cmd.colorscheme "catppuccin-macchiato"
  end
}
