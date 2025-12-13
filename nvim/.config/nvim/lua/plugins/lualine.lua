return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
    local custom = require('lualine.themes.gruvbox-material')
    custom.insert = custom.terminal
    custom.command = custom.terminal
    custom.visual = custom.terminal
		require("lualine").setup({
			sections = { lualine_x = { "filetype" }, lualine_b = {} },
			options = {
				section_separators = { left = "", right = "" },
				component_separators = { left = "", right = "" },
				icons_enabled = false,
        globalstatus = true,
				theme = custom,
			},
		})
	end,
}
