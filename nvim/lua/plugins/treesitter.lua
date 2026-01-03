return {
  "nvim-treesitter/nvim-treesitter",
  branch = 'master',
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = { "lua", "bash" },
      highlight = { enable = true },
      sync_install = true,
      auto_install = true
    })
  end
}
