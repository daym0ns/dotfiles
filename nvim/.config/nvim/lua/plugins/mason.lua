return {
	{
		"mason-org/mason.nvim",
    opts = {}
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
          "rust_analyzer",
					"lua_ls",
          "bashls",
					"stylua",
					"gopls",
          "taplo",
					"zls",
				},
			})
		end,
	},
}
