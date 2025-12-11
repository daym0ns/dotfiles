return {
	{
		"ojroques/vim-oscyank",
	},
  {
    "psliwka/termcolors.nvim",
    opts = {},
  },
	{
		"mbbill/undotree",
		config = function()
			vim.keymap.set("n", "<leader>u", ":UndotreeToggle<CR>")
		end,
	},
	{
		"brenoprata10/nvim-highlight-colors",
		config = function()
			require("nvim-highlight-colors").setup({})
		end,
	},
}
