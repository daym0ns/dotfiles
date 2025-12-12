return {
	"nvim-mini/mini.surround",
	config = function()
		require("mini.surround").setup({
			mappings = {
				find = "",
				find_left = "",
				highlight = "",
			},
		})
	end,
}
