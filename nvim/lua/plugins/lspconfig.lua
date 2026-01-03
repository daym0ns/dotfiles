return {
  'neovim/nvim-lspconfig',
  dependencies = {
    {
      "folke/lazydev.nvim", ft = "lua",
      opts = {
        library = {
          { path = "${3rd}/luv/library", words = { "vim%.uv" } }
        }
      }
    }
  },
  config = function()
    vim.keymap.set('n', 'K', vim.lsp.buf.hover)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition)
    vim.keymap.set("n", "gr", vim.lsp.buf.references)
    vim.keymap.set("n", "<space>lr", vim.lsp.buf.rename)
    vim.keymap.set('n', '<space>la', vim.lsp.buf.code_action)
    vim.keymap.set('n', '<space>ld', vim.diagnostic.open_float)
  end
}
