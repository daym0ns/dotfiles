return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    require("which-key").setup({
      icons = {
        mappings = false
      },
      win = {
        no_overlap = true,

        width = { min = 40, max = 75 },
        height = { min = 15, max = 20 },

        col = math.huge,
        row = -2,

        border = "rounded",
        padding = { 1, 2 },
        title = true,
        title_pos = "center",
        zindex = 1000,
        bo = {},
        wo = {
          winblend = 10,
        },
      },
    })
  end
}
