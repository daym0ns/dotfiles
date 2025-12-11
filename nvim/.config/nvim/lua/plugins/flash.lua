return {
  "folke/flash.nvim",
  event = "VeryLazy",
  -- stylua: ignore
  config = function()
    require("flash").setup()
    vim.keymap.set({ "n", "x", "o" }, "zq", function() require("flash").jump() end)
  end
}
