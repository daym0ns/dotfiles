return {
  "mikavilpas/yazi.nvim",
  version = "*",
  event = "VeryLazy",
  dependencies = { { "nvim-lua/plenary.nvim", lazy = true } },
  config = function()
    require("yazi").setup({
      open_for_directories = false,
      keymaps = {
        show_help = "<f1>",
      }
    })

    vim.keymap.set('n', '<leader>e', ':Yazi<CR>')
  end,
  init = function()
    vim.g.loaded_netrwPlugin = 1
  end,
}
