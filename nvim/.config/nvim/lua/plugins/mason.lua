return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
			vim.keymap.set("n", "<leader>m", ":Mason<CR>")
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
		config = function()
			require("mason-lspconfig").setup({
				automatic_enable = true,
				ensure_installed = {
					"lua_ls",
					"stylua",
					"gopls",
					"zls",
				},
			})
		end,
	},
}
