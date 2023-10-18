-- local rosePine = require('rose-pine')
-- rosePine.setup({
-- 	disable_italics = true,
-- })

-- vim.g.everforest_background = 'hard'
-- vim.g.everforest_transparent_background = 0
-- vim.g.everforest_ui_contrast = 'high'

function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
end

ColorMyPencils("onedark")
