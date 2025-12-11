return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  lazy = false,
  build = ":TSUpdate",
  config = function()
  ---@diagnostic disable-next-line: missing-fields
    require("nvim-treesitter.configs").setup({
      sync_install = false,
      auto_install = true,
      ignore_install = {},
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
      },
      ensure_installed = {
        "lua",
        "nix",
        "go",
      },
    })
  end,
}
