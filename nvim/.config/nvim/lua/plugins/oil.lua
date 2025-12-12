return {
  "stevearc/oil.nvim",
  opts = {},
  dependencies = { { "nvim-tree/nvim-web-devicons", opts = {} } },
  lazy = false,
  config = function()
    require("oil").setup({
      default_file_explorer = false,
      view_options = { show_hidden = true },
      columns = {}
    })
    vim.keymap.set("n", "<leader>o", ":Oil<CR>")
  end,
}
