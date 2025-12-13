return {
  'Wansmer/treesj',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('treesj').setup({ max_join_length = 520 })
    vim.keymap.set('n', '<leader>m', require('treesj').toggle)
  end,
}
