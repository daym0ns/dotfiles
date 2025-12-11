return {
  'nvim-mini/mini.pick',
  config = function()
    require("mini.pick").setup({
      source = { show = require("mini.pick").default_show },
      mappings = {
        move_down = "<C-j>",
        move_up = "<C-k>",
        toggle_preview = '<C-p>',
      }
    })
    vim.keymap.set("n", "<leader>ff", ":Pick files <CR>")
    vim.keymap.set("n", "<leader>fg", ":Pick grep_live <CR>")
    vim.keymap.set("n", "<leader>fh", ":Pick help <CR>")
    vim.keymap.set("n", "<leader>fb", ":Pick buffers <CR>")
  end
}
