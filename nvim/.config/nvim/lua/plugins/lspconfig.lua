return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
			vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)
			vim.keymap.set("n", "grr", vim.lsp.buf.references)
			vim.keymap.set("n", "grn", vim.lsp.buf.rename)
			vim.keymap.set("n", "gd", vim.lsp.buf.definition)
			vim.keymap.set("n", "K", vim.lsp.buf.hover)

      vim.fn.sign_define("DiagnosticSignError", { text = ">>", texthl = "DiagnosticSignError" })
      vim.fn.sign_define("DiagnosticSignWarn",  {text = ">>", texthl = "DiagnosticSignWarn"})
      vim.fn.sign_define("DiagnosticSignInfo",  {text = ">>", texthl = "DiagnosticSignInfo"})
      vim.fn.sign_define("DiagnosticSignHint",  {text = ">>", texthl = "DiagnosticSignHint"})

      vim.diagnostic.config({ virtual_text = true, signs = true, update_in_insert = true })
		end,
	},
	{
		"folke/lazydev.nvim",
		ft = "lua",
		opts = {
			library = {
				{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
			},
		},
	},
}
