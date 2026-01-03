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
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'LSP: Show hover documentation' })
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'LSP: Go to definition' })
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = 'LSP: Go to declaration' })
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = 'LSP: List references' })
    vim.keymap.set('n', '<space>lr', vim.lsp.buf.rename, { desc = 'LSP: Rename variable' })
    vim.keymap.set('n', '<space>la', vim.lsp.buf.code_action, { desc = 'LSP: Code actions' })
    vim.keymap.set('n', '<space>ld', vim.diagnostic.open_float, { desc = 'LSP: Show diagnostics' })
  end
}
