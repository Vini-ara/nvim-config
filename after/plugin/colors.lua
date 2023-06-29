local rosePine = require('rose-pine')

rosePine.setup({
	disable_italics = true,
	--- transparente
	disable_background = true,
	disable_float_background = true,
	variant = 'moon',
	highlight_groups = {
		TelescopeBorder = { fg = "highlight_high", bg = "none" },
		TelescopeNormal = { bg = "none" },
		TelescopePromptNormal = { bg = "base" },
		TelescopeResultsNormal = { fg = "subtle", bg = "none" },
		TelescopeSelection = { fg = "text", bg = "base" },
		TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
	}
})

vim.g.everforest_background = 'hard'
vim.g.everforest_transparent_background = 0
vim.g.everforest_ui_contrast = 'high'

function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
end

ColorMyPencils("everforest")
