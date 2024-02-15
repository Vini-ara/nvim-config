-- local rosePine = require('rose-pine')
-- rosePine.setup({
-- 	disable_italics = true,
-- })

require('onedark').setup({
  transparent = true,
})

vim.g.everforest_background = 'hard'
vim.g.everforest_transparent_background = 1
vim.g.everforest_ui_contrast = 'high'

function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
end

ColorMyPencils("onedark")
